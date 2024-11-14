import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class ErrorStateWidget extends StatelessWidget {
  const ErrorStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String errorMsg = 'Fetch failed';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            color: AppColors.white,
          ),
          const SizedBox(height: 16),
          Text(
            errorMsg,
            style: const TextStyle(
              fontSize: 20,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
