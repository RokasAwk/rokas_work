import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppBoxShadow {
  static const BoxShadow boxShadow1 = BoxShadow(
    color: AppColors.boxShadow1,
    spreadRadius: 0,
    blurRadius: 20,
    offset: Offset(0, 4),
  );
  static const BoxShadow bottomShadow = BoxShadow(
    color: AppColors.boxShadow2,
    spreadRadius: 0,
    blurRadius: 20,
    offset: Offset(0, 20),
  );
  static const BoxShadow topShadow = BoxShadow(
    color: AppColors.boxShadow2,
    spreadRadius: 0,
    blurRadius: 20,
    offset: Offset(0, -20),
  );
  static const BoxShadow homeCardShadow = BoxShadow(
    color: AppColors.boxShadowBlack,
    spreadRadius: 0,
    blurRadius: 4,
    offset: Offset(0, 4),
  );
}
