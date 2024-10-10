import 'package:flutter/material.dart';
import 'package:rokas_work/l10n/l10n.dart';

class DevelopedByWidget extends StatelessWidget {
  const DevelopedByWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(L10n.tr.common_develope_by);
  }
}
