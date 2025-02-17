import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.verticalPadding = 16,
  });

  final String title;
  final Function() onPressed;
  final double verticalPadding;

  factory PrimaryButton.medium({
    required String text,
    required VoidCallback onPressed,
  }) {
    return PrimaryButton(
      title: text,
      onPressed: onPressed,
      verticalPadding: 8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.orange,
            padding: EdgeInsets.symmetric(vertical: verticalPadding),
          ),
          onPressed: onPressed,
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
      )
    ]);
  }
}
