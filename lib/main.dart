import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/presentation/services/firebase_service/firbase_service.dart';

import 'presentation/utils/share_preferance_util.dart';
import 'rokas_work_app.dart';

bool shouldUseFirestoreEmulator = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isIOS) {
    await FirbaseService().initializeDefault();
  }
  if (Platform.isAndroid) {
    await FirbaseService().initializeDefaultFromAndroidResource();
  }

  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );
  if (shouldUseFirestoreEmulator) {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }

  SharePreferenceUtil().init();

  runApp(const ProviderScope(child: RokasWorkApp()));
}
