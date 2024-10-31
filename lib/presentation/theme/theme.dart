import 'package:flutter/material.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';

var appTheme = ThemeData(
  useMaterial3: false,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.blueGray,
    centerTitle: false,
    titleSpacing: 24,
  ),
  primaryColor: Colors.blueGrey,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.blueGrey,
  ),
  scrollbarTheme: ScrollbarThemeData(
    radius: const Radius.circular(10),
    thickness: MaterialStateProperty.all(4),
    trackVisibility: MaterialStateProperty.all(false),
    thumbVisibility: MaterialStateProperty.all(true),
    thumbColor: MaterialStateProperty.all(Colors.blueGrey),
  ),
);
