import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rokas_work/domain/entity/memo.dart';

part 'memo_list_state.freezed.dart';

@freezed
class MemoListState with _$MemoListState {
  factory MemoListState({
    required List<Memo> memoList,
    required int filterType, // 0: 創建時間 1: 編輯時間
  }) = _MemoListState;

  factory MemoListState.init() => MemoListState(
        memoList: [],
        filterType: 0,
      );
}
