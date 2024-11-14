import 'package:flutter/material.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';

import '../../theme/app_colors.dart';

class ErrorStateWidget extends StatelessWidget {
  const ErrorStateWidget({
    super.key,
    required this.onRetry,
  });

  final Function() onRetry;

  @override
  Widget build(BuildContext context) {
    String errorMsg = 'Fetch failed';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            color: AppColors.primaryColor,
          ),
          const SizedBox(height: 16),
          Text(
            errorMsg,
            style: const TextStyle(
              fontSize: 20,
              color: AppColors.primaryColor,
            ),
          ),
          TextButton.icon(
            onPressed: onRetry,
            icon: const Icon(
              Icons.refresh,
              color: AppColors.blueGray,
            ),
            label: const Text(
              '重新嘗試',
              style: AppTextStyles.appW600BlueGray,
            ),
          )
        ],
      ),
    );
  }
}
