import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
    required this.onPop,
  });

  final Function() onPop;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPop,
        icon: const Icon(
          Icons.arrow_left,
        ));
  }
}
