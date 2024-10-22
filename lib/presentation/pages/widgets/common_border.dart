import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

OutlineInputBorder focusBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.blueGray,
    ),
    borderRadius: BorderRadius.circular(4.0),
    gapPadding: 10,
  );
}

OutlineInputBorder errorBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: Color(0xFFEB4747),
    ),
    borderRadius: BorderRadius.circular(4.0),
    gapPadding: 10,
  );
}

OutlineInputBorder enableBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.blueGray,
    ),
    borderRadius: BorderRadius.circular(4.0),
    gapPadding: 10,
  );
}

OutlineInputBorder disableBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.primaryColor,
    ),
    borderRadius: BorderRadius.circular(4.0),
    gapPadding: 10,
  );
}
