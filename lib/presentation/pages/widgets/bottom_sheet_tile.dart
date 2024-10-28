import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class BottomSheetTile extends StatelessWidget {
  const BottomSheetTile({
    super.key,
    required this.text,
    this.hint,
    this.onTapped,
    this.trailing,
    this.maxLines,
  });

  final String text;
  final String? hint;
  final VoidCallback? onTapped;
  final Widget? trailing;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle(),
                  if (hint != null) ...[
                    const SizedBox(height: 8),
                    Text(
                      hint!,
                      style: AppTextStyles.appW400N300Medium
                          .copyWith(color: AppColors.neutral_600),
                    )
                  ],
                ],
              ),
            ),
            const SizedBox(width: 8),
            if (trailing != null) ...[
              trailing!,
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    if (maxLines == null) {
      return Text(
        text,
        style: AppTextStyles.appW600Primary,
      );
    } else {
      return Text(
        text,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.appW600Primary,
      );
    }
  }
}
