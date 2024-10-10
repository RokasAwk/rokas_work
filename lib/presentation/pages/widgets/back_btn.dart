import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
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
