import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import '../../theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: MaterialButton(
          color: AppColors.blueGray,
          onPressed: onPressed,
          disabledColor: AppColors.black_50,
          disabledTextColor: AppColors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                color: AppColors.white,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ))
    ]);
  }
}
