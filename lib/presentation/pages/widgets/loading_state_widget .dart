import 'package:flutter/material.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.blueGray,
      ),
    );
  }
}
