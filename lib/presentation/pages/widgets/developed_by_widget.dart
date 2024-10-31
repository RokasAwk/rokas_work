import 'package:flutter/material.dart';
import 'package:rokas_work/l10n/l10n.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';

class DevelopedByWidget extends StatelessWidget {
  const DevelopedByWidget({
    super.key,
    this.textStyle,
  });

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      L10n.tr.common_develope_by,
      style: textStyle ?? AppTextStyles.appW600PrimaryMedium,
    );
  }
}
