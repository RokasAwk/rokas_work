import 'package:flutter/material.dart';
import 'package:rokas_work/presentation/resource/assets.dart';

import '../../../l10n/l10n.dart';
import '../../theme/app_colors.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({
    super.key,
    this.isShowPic = true,
  });

  final bool isShowPic;

  @override
  Widget build(BuildContext context) {
    String emptyMsg = L10n.tr.common_empty_item;

    return Center(
      child: Container(
          color: AppColors.grey,
          child: Column(
            mainAxisAlignment:
                isShowPic ? MainAxisAlignment.end : MainAxisAlignment.center,
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
              if (isShowPic) ...[Image.asset(Assets.holding)]
            ],
          )),
    );
  }
}
