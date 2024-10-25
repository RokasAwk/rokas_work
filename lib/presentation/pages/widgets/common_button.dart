import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.verticalPadding = 16,
    this.backgroundColor,
    this.textColor,
    this.shape,
    this.textStyleHeight,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final double verticalPadding;
  final Color? backgroundColor;
  final Color? textColor;
  final OutlinedBorder? shape;
  final double? textStyleHeight;

  factory CommonButton.medium({
    required String text,
    required VoidCallback? onPressed,
    Color? backgroundColor,
    Color? textColor,
    OutlinedBorder? shape,
    double? textStyleHeight,
  }) {
    return CommonButton(
      title: text,
      onPressed: onPressed,
      verticalPadding: 8,
      backgroundColor: backgroundColor,
      textColor: textColor,
      shape: shape,
      textStyleHeight: textStyleHeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = AppTextStyles.appW600White
        .copyWith(color: textColor ?? AppColors.white);
    if (textStyleHeight != null) {
      style = style.copyWith(height: textStyleHeight);
    }
    return IgnorePointer(
      child: TextButton(
          style: TextButton.styleFrom(
            visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
            backgroundColor: backgroundColor ?? AppColors.neutral_700,
            padding: EdgeInsets.symmetric(vertical: verticalPadding),
            shape: shape ??
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(
              title,
              style: style,
            ),
          )),
    );
  }
}
