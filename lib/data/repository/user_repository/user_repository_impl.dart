import 'dart:async';

import 'package:rokas_work/domain/repository/user_repository.dart';
import 'package:rokas_work/domain/value_object/credential.dart';
import 'package:rokas_work/domain/value_object/user_info.dart';
import 'package:rokas_work/utils/simple_stream.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required Future<Credential?> Function() getCredential,
    required Future<void> Function(String account) updateCredentialByAccount,
  })  : _getCredential = getCredential,
        _updateCredentialByAccount = updateCredentialByAccount;

  final Future<Credential?> Function() _getCredential;
  final Future<void> Function(String account) _updateCredentialByAccount;

  final SimpleStream<UserInfo?> _userInfoChangedBroadcast =
      SimpleStream(isBroadcastStream: true);

  @override
  Future<UserInfo> getUserInfo() async {
    UserInfo? userInfo = _userInfoChangedBroadcast.current;
    userInfo ??= UserInfo.empty();
    return userInfo;
  }

  @override
  Stream<UserInfo?> userInfoChangedBroadcaster() {
    return _userInfoChangedBroadcast.stream;
  }

  @override
  Future<void> updateEmail(String email) async {
    final c = await _getCredential();
    if (c != null) {
      UserInfo? userInfo = _userInfoChangedBroadcast.current;
      if (userInfo != null) {
        userInfo = userInfo.copyWith(email: email);
        _userInfoChangedBroadcast.update(userInfo);
        _updateCredentialByAccount(email);
      }
    }
  }

  @override
  Future<String> updateNickname(String nickname) async {
    var credential = await _getCredential();
    if (credential == null) {
      throw Exception('not Authed');
    }

    UserInfo? userInfo = _userInfoChangedBroadcast.current;
    if (userInfo != null) {
      userInfo = userInfo.copyWith(
        nickname: nickname,
      );
      _userInfoChangedBroadcast.update(userInfo);
    }

    return nickname;
  }
}
