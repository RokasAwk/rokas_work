import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class ContentShadow extends StatelessWidget {
  const ContentShadow({
    required this.shadowContainerHeight,
    required this.shadow,
    required this.content,
    required this.isShadow,
    this.borderRadius,
    super.key,
  });

  final BorderRadiusGeometry? borderRadius;
  final double shadowContainerHeight;
  final BoxShadow shadow;
  final Widget content;
  final bool isShadow;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: shadowContainerHeight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: AppColors.neutral_800,
            boxShadow: (isShadow) ? [shadow] : [],
          ),
        ),
        content,
      ],
    );
  }
}
