import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';
import 'package:rokas_work/presentation/theme/app_text_styles.dart';

import 'common_border.dart';

class FormFieldWithTitle extends StatefulWidget {
  const FormFieldWithTitle({
    this.readOnly = false,
    required this.titleText,
    required this.hintText,
    this.controller,
    this.validator,
    this.unFocus,
    this.onClearPressed,
    this.onChanged,
    this.autoFocus = false,
    super.key,
  });

  final bool autoFocus;
  final bool readOnly;
  final String titleText;
  final String hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final void Function()? unFocus;
  final void Function()? onClearPressed;
  final void Function(String value)? onChanged;

  @override
  State<FormFieldWithTitle> createState() => _FormFieldWithTitleState();
}

class _FormFieldWithTitleState extends State<FormFieldWithTitle> {
  final _focusNode = FocusNode();
  late TextEditingController _controller;
  bool clearIconVisible = false;

  @override
  void initState() {
    super.initState();
    _setupFocusNode();
    _setupController();
  }

  void _setupFocusNode() {
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        widget.unFocus?.call();
      }
    });
  }

  void _setupController() {
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(() {
      if (mounted) {
        setState(() {
          clearIconVisible = _controller.text.isNotEmpty;
        });
      }
    });
    clearIconVisible = _controller.text.isNotEmpty;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titleText,
          style: AppTextStyles.appW600N300Medium,
        ),
        const SizedBox(height: 4),
        _formField(context, onClearPressed: () {
          if (!widget.readOnly) {
            if (widget.onClearPressed == null) {
              _controller.clear();
              widget.onChanged?.call('');
              return;
            }

            widget.onClearPressed?.call();
          }
        }),
      ],
    );
  }

  Widget _formField(
    BuildContext context, {
    void Function()? onClearPressed,
  }) {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      autofocus: widget.autoFocus,
      readOnly: widget.readOnly,
      controller: _controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      focusNode: _focusNode,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      // for android/web, textInputAction is next, next focus will be stuck on the Button or InkWell.
      // solusion : onEditingComplete unfocus
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
      },
      cursorColor: AppColors.white,
      style: AppTextStyles.appW400PrimaryMedium,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        prefix: const Padding(padding: EdgeInsets.only(left: 8)),
        hintText: widget.hintText,
        hintStyle: AppTextStyles.appW400N300Medium,
        errorStyle: AppTextStyles.appW400R400Small,
        suffixIcon: Visibility(
          visible: clearIconVisible,
          child: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.close,
              size: 20,
              color: AppColors.blueGray,
            ),
            padding: const EdgeInsets.only(left: 8, right: 16),
            onPressed: onClearPressed,
          ),
        ),
        focusedBorder: focusBorder(),
        enabledBorder: enableBorder(),
        errorBorder: errorBorder(),
        focusedErrorBorder: errorBorder(),
        disabledBorder: disableBorder(),
      ),
    );
  }
}
