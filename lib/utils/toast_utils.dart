import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';

import '../presentation/routers/router.dart';

class ToastUtils {
  static final ToastUtils _instance = ToastUtils._internal();

  factory ToastUtils() {
    return _instance;
  }

  ToastUtils._internal();

  static final FToast _fToast = FToast();

  static AppRouter? _appRouter;

  static init(BuildContext context) {
    _fToast.init(context);
  }

  static resetFToast(BuildContext context) {
    _fToast.init(context);
  }

  static void showToast(String msg) {
    _fToast.showToast(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.blueGray.withOpacity(0.7),
        ),
        child: Text(
          msg,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
      gravity: ToastGravity.CENTER,
      toastDuration: const Duration(seconds: 2),
    );
  }

  static Future<void> showCustomDialog(Widget child) async {
    await showDialog(
      barrierDismissible: false,
      context: _appRouter!.navigatorKey.currentContext!,
      barrierColor: Colors.black.withOpacity(0.3),
      builder: (BuildContext context) {
        return child;
      },
    );
  }
}
