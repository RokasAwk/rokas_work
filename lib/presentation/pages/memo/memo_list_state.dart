import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rokas_work/domain/entity/memo.dart';
import 'package:rokas_work/domain/value_object/memo_filter_type.dart';

part 'memo_list_state.freezed.dart';

@freezed
class MemoListState with _$MemoListState {
  factory MemoListState({
    required List<Memo> memoList,
    required MemoFilterType filterType,
  }) = _MemoListState;

  factory MemoListState.init() => MemoListState(
        memoList: [],
        filterType: MemoFilterType.createdTime,
      );
}
