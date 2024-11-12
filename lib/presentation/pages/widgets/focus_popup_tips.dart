import 'package:flutter/material.dart';
import 'package:rokas_work/presentation/theme/app_colors.dart';

import '../../theme/app_box_shadow.dart';
import 'triangle_clipper.dart';

class FocusPopupTips extends StatefulWidget {
  const FocusPopupTips({
    required this.focusNode,
    required this.tip,
    required this.child,
    this.widthMultiple = 2 / 3,
    this.backgroundColor,
    this.padding,
    this.showTopLeftArrow = false,
    super.key,
  });
  final FocusNode focusNode;
  final Widget tip;
  final double widthMultiple;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool showTopLeftArrow;

  /// child parameter need use same focusNode.
  final Widget child;

  @override
  FocusPopupTipsState createState() => FocusPopupTipsState();
}

class FocusPopupTipsState extends State<FocusPopupTips> {
  late OverlayEntry overlayEntry;

  LayerLink layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(() {
      if (widget.focusNode.hasFocus) {
        overlayEntry = _createSelectPopupWindow();
        Overlay.of(context).insert(overlayEntry);
      } else {
        overlayEntry.remove();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: widget.child,
    );
  }

  void refresh() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      overlayEntry.markNeedsBuild();
    });
  }

  void updateOverlayEntryPosition() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      overlayEntry.remove();
      overlayEntry = _createSelectPopupWindow();
      Overlay.of(context).insert(overlayEntry);
    });
  }

  OverlayEntry _createSelectPopupWindow() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
        width: size.width * widget.widthMultiple,
        child: CompositedTransformFollower(
          link: layerLink,
          showWhenUnlinked: false,
          offset:
              Offset(size.width * (1 - widget.widthMultiple), size.height + 4),
          child: Material(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.showTopLeftArrow) ...[
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: ClipPath(
                      clipper: TriangleClipper(),
                      child: Container(
                        color: widget.backgroundColor ?? AppColors.neutral_800,
                        height: 8,
                        width: 16,
                      ),
                    ),
                  ),
                ],
                Container(
                  padding: widget.padding ?? const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: widget.backgroundColor ?? AppColors.neutral_800,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [AppBoxShadow.boxShadow1],
                  ),
                  child: widget.tip,
                ),
              ],
            ),
          ),
        ),
      );
    });
    return overlayEntry;
  }
}
