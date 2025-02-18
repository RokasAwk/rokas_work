import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rokas_work/domain/value_object/credential.dart';
import 'package:rokas_work/utils/simple_stream.dart';

import '../../../domain/repository/authentication_repository.dart';

class AuthRepoImpl implements AuthenticationRepository {
  AuthRepoImpl({
    required FlutterSecureStorage secureStorage,
  }) : _secureStorage = secureStorage;

  final SimpleStream<Credential?> _authChangedBroadcast =
      SimpleStream(isBroadcastStream: true);

  final FlutterSecureStorage _secureStorage;

  // save current user email
  static const String _kCurrentAuthAccount = 'kCurrentAccount';

  Credential? get _currentCachedCredential => _authChangedBroadcast.current;
  Credential? _verificationCachedCredential;

  Future<Credential> _getCredentialByAccount(String account) async {
    var credentialJsonString = await _secureStorage.read(key: account);
    final credentialJson = jsonDecode(credentialJsonString!);
    final Credential credential = Credential.fromJson(credentialJson);
    return credential;
  }

  Future<Credential?> _getCurrentAccountCredential() async {
    if (_currentCachedCredential == null) {
      String? account;

      account = await _secureStorage.read(key: _kCurrentAuthAccount);

      if (account == null) {
        return null;
      }
      Credential credential = await _getCredentialByAccount(account);
      _authChangedBroadcast.update(credential);
    }
    return _currentCachedCredential;
  }

  Future<void> _saveCredentialByAccount({
    required Credential credential,
  }) async {
    await _secureStorage.write(
      key: credential.emailAccount,
      value: jsonEncode(credential.toJson()),
    );
    await _secureStorage.write(
      key: _kCurrentAuthAccount,
      value: credential.emailAccount,
    );
  }

  @override
  Future<Credential?> hasAuth() async {
    try {
      final credential = await _getCurrentAccountCredential();
      return credential;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Credential> login(Credential credential) async {
    await _saveCredentialByAccount(credential: credential);
    _authChangedBroadcast.update(credential);

    return credential;
  }
}
