import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import '../../theme/app_colors.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String emptyMsg = L10n.tr.common_empty_item;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            color: AppColors.black,
            size: 36,
          ),
          const SizedBox(height: 16),
          Text(
            emptyMsg,
            style: const TextStyle(
              fontSize: 20,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
