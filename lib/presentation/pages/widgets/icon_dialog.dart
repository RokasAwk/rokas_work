import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../l10n/l10n.dart';
import '../../theme/app_box_shadow.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import 'common_button.dart';
import 'content_shadow.dart';
import 'primary_button.dart';

/// Show Icon Dialog
/// negativeButton: if null, will not display.
/// positiveButton: if null, show default primary button.
class IconDialog extends StatefulWidget {
  const IconDialog({
    Key? key,
    this.icon,
    this.title,
    this.content,
    this.negativeButton,
    this.positiveButton,
    this.scrollViewMaxHeight,
    this.countdown,
    this.isShowSubContent = false,
    this.subContent,
  }) : super(key: key);

  final Widget? icon;
  final Widget? title;
  final Widget? content;
  final double? scrollViewMaxHeight;

  // For cancel, left button
  final Widget? negativeButton;

  // For confirm, right button
  final Widget? positiveButton;
  final int? countdown;

  final bool isShowSubContent;
  final Widget? subContent;

  /// Display with warning icon
  factory IconDialog.warning({
    String? title,
    required String message,
    String? cancelButtonText,
    String? confirmButtonText,
    required VoidCallback onCancel,
    required VoidCallback onConfirm,
    bool isHideCancel = false,
    bool isHideConfirm = false,
    TextStyle? messageStyle,
  }) {
    return IconDialog(
      icon: const FaIcon(FontAwesomeIcons.triangleExclamation),
      title: title != null
          ? Text(
              title,
              style: AppTextStyles.appW600White,
              textAlign: TextAlign.center,
            )
          : null,
      content: Text(
        message,
        style: messageStyle ?? AppTextStyles.appW400White,
        textAlign: TextAlign.center,
      ),
      positiveButton: isHideConfirm
          ? null
          : PrimaryButton(
              title: confirmButtonText ?? L10n.tr.common_ok,
              onPressed: onConfirm,
            ),
      negativeButton: isHideCancel
          ? null
          : CommonButton(
              title: cancelButtonText ?? L10n.tr.common_cancel,
              onPressed: onCancel,
              verticalPadding: 8,
            ),
    );
  }

  factory IconDialog.failure({
    required String message,
    String? confirmButtonText,
    required VoidCallback onConfirm,
  }) {
    return IconDialog(
      icon: const FaIcon(FontAwesomeIcons.ban),
      content: Text(
        message,
        style: AppTextStyles.appW400White,
        textAlign: TextAlign.center,
      ),
      positiveButton: PrimaryButton(
        title: confirmButtonText ?? L10n.tr.common_ok,
        onPressed: onConfirm,
      ),
    );
  }

  /// Display with completed icon
  factory IconDialog.completed({
    String? title,
    required String message,
    String? cancelButtonText,
    String? confirmButtonText,
    required VoidCallback onCancel,
    required VoidCallback onConfirm,
    bool isHideCancel = false,
    bool isHideConfirm = false,
    TextStyle? messageStyle,
  }) {
    return IconDialog(
      icon: const FaIcon(FontAwesomeIcons.check),
      title: title != null
          ? Text(
              title,
              style: AppTextStyles.appW600White,
              textAlign: TextAlign.center,
            )
          : null,
      content: Text(
        message,
        style: messageStyle ?? AppTextStyles.appW400White,
        textAlign: TextAlign.center,
      ),
      positiveButton: isHideConfirm
          ? null
          : PrimaryButton(
              title: confirmButtonText ?? L10n.tr.common_ok,
              onPressed: onConfirm,
            ),
      negativeButton: isHideCancel
          ? null
          : CommonButton(
              title: cancelButtonText ?? L10n.tr.common_cancel,
              onPressed: onCancel,
              verticalPadding: 8,
            ),
    );
  }

  @override
  State<IconDialog> createState() => _IconDialogState();
}

class _IconDialogState extends State<IconDialog> {
  final double _scrollViewMaxHeight = 280;
  final GlobalKey _scrollViewKey = GlobalKey();
  bool _showShadow = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      RenderBox? renderBox =
          _scrollViewKey.currentContext!.findRenderObject() as RenderBox?;
      setState(() {
        _showShadow = renderBox!.size.height == _scrollViewMaxHeight;
      });
      if (widget.countdown != null) {
        _beginTimer();
      }
    });
    countdown = widget.countdown ?? 5;
    super.initState();
  }

  Timer? _timer;

  late int countdown;

  bool init = true;

  void _beginTimer() {
    if (init) {
      _timer?.cancel();
      _timer = null;
    }
    _timer = Timer(const Duration(seconds: 1), () {
      countdown--;
      if (countdown == -1) {
        _timer?.cancel();
        _timer = null;
        Navigator.pop(context);
      } else {
        setState(() {});
        _beginTimer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: AlertDialog(
        backgroundColor: AppColors.neutral_800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadowColor: AppColors.black_50,
        elevation: 0,
        buttonPadding: EdgeInsets.zero,
        iconPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        contentPadding: const EdgeInsets.symmetric(vertical: 24),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Icon
            if (widget.icon != null) ...[
              ContentShadow(
                isShadow: _showShadow,
                shadowContainerHeight: 88,
                shadow: AppBoxShadow.bottomShadow,
                content: Center(
                  child: widget.icon!,
                ),
              ),
            ],

            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 6),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight:
                        widget.scrollViewMaxHeight ?? _scrollViewMaxHeight,
                  ),
                  child: RawScrollbar(
                      thumbVisibility: true,
                      radius: const Radius.circular(90),
                      thickness: 2,
                      thumbColor: AppColors.neutral_80,
                      child: SingleChildScrollView(
                        key: _scrollViewKey,
                        padding: const EdgeInsets.only(right: 18),
                        child: _buildTitleContent(),
                      )),
                ),
              ),
            ),

            if (widget.isShowSubContent && widget.subContent != null) ...[
              const SizedBox(
                height: 16,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                  child: widget.subContent!),
            ],

            ContentShadow(
              isShadow: _showShadow,
              shadowContainerHeight: 64,
              shadow: AppBoxShadow.topShadow,
              content: Padding(
                padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                child: _buildButtons(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleContent() {
    return Column(
      children: [
        /// Title
        if (widget.title != null) widget.title!,

        if (widget.title != null && widget.content != null)
          const SizedBox(height: 8),

        /// Content
        if (widget.content != null) widget.content!,
      ],
    );
  }

  Widget _buildButtons(BuildContext context) {
    if (widget.negativeButton != null) {
      return Row(
        children: [
          Flexible(
            flex: 1,
            child: widget.negativeButton!,
          ),
          const SizedBox(width: 8),
          Flexible(
            flex: 1,
            child: widget.positiveButton != null
                ? widget.positiveButton!
                : _defaultPositiveButton(context),
          ),
        ],
      );
    }

    return widget.positiveButton != null
        ? widget.positiveButton!
        : _defaultPositiveButton(context);
  }

  Widget _defaultPositiveButton(BuildContext context) {
    return PrimaryButton(
      title: L10n.tr.common_ok,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
