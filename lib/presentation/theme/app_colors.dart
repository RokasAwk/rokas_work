import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 37, 37, 41);

  static const Color blurGray = Colors.blueGrey;
  static Color blueGrey_10 = AppColors.blurGray.withOpacity(0.1);

  static const Color black = Color(0xFF000000);
  static Color black_50 = AppColors.black.withOpacity(0.5);

  static const Color white = Color(0xFFFFFFFF);

  static const Color yellow = Color(0xFFF4CD7B);

  static const Color neutral_10 = Color(0xFFFBFBFD);
  static const Color neutral_20 = Color(0xFFF9F9FB);
  static const Color neutral_40 = Color(0xFFF3F4F7);
  static const Color neutral_50 = Color(0xFFEEEEF2);
  static const Color neutral_80 = Color(0xFFE2E3EA);
  static const Color neutral_100 = Color(0xFFC8C9D0);
  static const Color neutral_200 = Color(0xFFA5A7B1);
  static const Color neutral_300 = Color(0xFF888C9D);
  static const Color neutral_400 = Color(0xFFB8B8B8);
  static const Color neutral_500 = Color(0xFFA1A1A6);
  static const Color neutral_600 = Color(0xFF62636A);
  static const Color neutral_650 = Color(0xFF47484D);
  static const Color neutral_700 = Color(0xFF333333);
  static const Color neutral_800 = Color(0xFF252525);
  static const Color neutral_900 = Color(0xFF19191B);

  static const Color r_10 = Color(0xFFFDEDED);
  static const Color r_20 = Color(0x32EB4747);
  static const Color r_50 = Color(0xFFFDE9E9);
  static const Color r_200 = Color(0xFFF5A3A3);
  static const Color r_400 = Color(0xFFEB4747);
  static const Color r_600 = Color(0xFF7B1F1F);
  static const Color r_700 = Color(0xFF4B1919);

  static const Color g_10 = Color(0xFFE7F8F2);
  static const Color g_20 = Color(0x3214B881);
  static const Color g_50 = Color(0xFFA6F2D3);
  static const Color g_100 = Color(0xFF7AEBBD);
  static const Color g_200 = Color(0xFF2BE79A);
  static const Color g_300 = Color(0xFF25D88F);
  static const Color g_400 = Color(0xFF1EC782);
  static const Color g_500 = Color(0xFF14B881);
  static const Color g_600 = Color(0xFF18A16A);
  static const Color g_700 = Color(0xFF1A8A5C);

  static const Color b_1 = Color(0xFF009EFD);
  static const Color b_2 = Color(0xFF00C6FB);
  static const Color b_3 = Color(0xFF005BEA);

  static List<Color> gradientColors = [blueGrey_10, blurGray];
}