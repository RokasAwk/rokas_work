import 'package:rokas_work/domain/value_object/memo_filter_type.dart';

import '../../l10n/l10n.dart';

extension MemoFilterTypeMessage on MemoFilterType {
  String text() {
    switch (this) {
      case MemoFilterType.createdTime:
        return L10n.tr.page_memo_created_time;
      case MemoFilterType.editedTime:
        return L10n.tr.page_memo_edited_time;
    }
  }
}
