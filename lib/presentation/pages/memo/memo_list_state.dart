import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rokas_work/domain/entity/momo.dart';

part 'memo_list_state.freezed.dart';

@freezed
class MemoListState with _$MemoListState {
  factory MemoListState({
    required List<Memo> memoList,
  }) = _MemoListState;

  factory MemoListState.init() => MemoListState(
        memoList: [],
      );
}
