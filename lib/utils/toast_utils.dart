import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';

import '../presentation/routers/router.dart';

class ToastUtils {
  static final ToastUtils _instance = ToastUtils._internal();

  factory ToastUtils() {
    return _instance;
  }

  ToastUtils._internal();

  static final FToast _fToast = FToast();

  static AppRouter? _appRouter;

  static init(BuildContext context, AppRouter appRouter) {
    _appRouter = appRouter;
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
          color: AppColors.border,
        ),
        child: Text(msg, style: AppTextStyles.appW400White),
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
