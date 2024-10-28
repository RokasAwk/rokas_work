import 'package:flutter/material.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';

import '../../theme/app_colors.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    this.onTap,
    required this.filterTitle,
  });

  final VoidCallback? onTap;
  final String filterTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Row(
            children: [
              const Icon(
                Icons.sort,
                color: AppColors.primaryColor,
              ),
              const SizedBox(width: 2),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(filterTitle,
                      style: AppTextStyles.appW600N300.copyWith(
                        overflow: TextOverflow.clip,
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
