import 'package:flutter/material.dart';
import 'package:rokas_work/presentation/pages/widgets/common_button.dart';

import '../../../../l10n/l10n.dart';
import '../../theme/app_colors.dart';
import 'primary_button.dart';

class TitleBottomSheet extends StatelessWidget {
  const TitleBottomSheet({
    Key? key,
    this.withTitle = true,
    this.withCloseButton = false,
    this.title = '',
    required this.body,
    this.onCancelPressed,
    this.padding = const EdgeInsets.symmetric(vertical: 8),
    this.cancelButton,
    this.rightButton,
    this.onCloseButtonPressed,
    this.isShowCancelButton = true,
    this.customBottom,
    this.topPadding,
  }) : super(key: key);

  final bool withTitle;
  final String title;
  final bool withCloseButton;
  final Widget body;
  final VoidCallback? onCancelPressed;
  final VoidCallback? onCloseButtonPressed;
  final EdgeInsetsGeometry padding;
  final Widget? cancelButton;
  final Widget? rightButton;
  final bool isShowCancelButton;
  final Widget? customBottom;
  final double? topPadding;

  factory TitleBottomSheet.withGreyCancelButton({
    bool withTitle = true,
    String title = '',
    required Widget body,
    VoidCallback? onCancelPressed,
  }) {
    return TitleBottomSheet(
      withTitle: withTitle,
      title: title,
      body: body,
      padding: const EdgeInsets.only(top: 8, bottom: 24),
      cancelButton: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.neutral_40,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onCancelPressed,
        child: Center(
          child: Text(
            L10n.tr.common_cancel,
            style: const TextStyle(
              color: AppColors.neutral_700,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  factory TitleBottomSheet.withCustomButton({
    bool withTitle = true,
    String title = '',
    required Widget body,
    required Color buttonColor,
    required Color buttonTextColor,
    String? buttonText,
    VoidCallback? onCancelPressed,
  }) {
    return TitleBottomSheet(
      withTitle: withTitle,
      title: title,
      body: body,
      padding: const EdgeInsets.only(top: 8, bottom: 24),
      cancelButton: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: onCancelPressed,
          child: Center(
            child: Text(buttonText ?? L10n.tr.common_cancel,
                style: TextStyle(
                  color: buttonTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
          )),
    );
  }

  factory TitleBottomSheet.resetAndConfirm({
    Key? key,
    bool withTitle = true,
    bool withCloseButton = true,
    String title = '',
    required Widget body,
    VoidCallback? onTapReset,
    VoidCallback? onTapConfirm,
  }) {
    return TitleBottomSheet(
      key: key,
      withTitle: withTitle,
      title: title,
      body: body,
      withCloseButton: withCloseButton,
      padding: const EdgeInsets.only(top: 8, bottom: 24),
      cancelButton: CommonButton.medium(
        text: L10n.tr.common_cancel,
        onPressed: () {
          onTapReset?.call();
        },
      ),
      rightButton: PrimaryButton.medium(
          text: L10n.tr.common_ok,
          onPressed: () {
            onTapConfirm?.call();
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 2 / 3,
        ),
        child: Container(
          padding: padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (withTitle) ...[
                Center(child: _title(context)),
              ],
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: body,
                ),
              ),
              if (customBottom != null) ...[
                customBottom!,
              ] else ...[
                _actionButtons(),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16, right: 16, bottom: 16, top: topPadding ?? 16),
      child: Row(
        children: [
          const SizedBox(height: 24, width: 24),
          Expanded(
              child: Center(
                  child: Text(title,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )))),
          SizedBox(
            height: 24,
            width: 24,
            child: (withCloseButton)
                ? InkWell(
                    onTap: onCloseButtonPressed ??
                        () => Navigator.of(context).pop(),
                    child: const Icon(Icons.close),
                  )
                : null,
          ),
        ],
      ),
    );
  }

  Widget _actionButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Row(
        children: [
          if (isShowCancelButton) ...[
            Expanded(child: Center(child: _buildButton()))
          ],
          if (isShowCancelButton && rightButton != null) ...[
            const SizedBox(width: 8)
          ],
          if (rightButton != null) ...[
            Expanded(child: Center(child: rightButton!))
          ],
        ],
      ),
    );
  }

  Widget _buildButton() {
    return cancelButton ?? _cancelBtn();
  }

  Widget _cancelBtn() {
    return PrimaryButton.medium(
      text: L10n.tr.common_cancel,
      onPressed: onCancelPressed!,
    );
  }
}
