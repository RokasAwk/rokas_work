import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rokas_work/domain/entity/memo.dart';
import 'package:rokas_work/domain/value_object/memo_filter_type.dart';

part 'memo_list_state.freezed.dart';

@freezed
class MemoListState with _$MemoListState {
  factory MemoListState.loading() = Loading;
  factory MemoListState.success({
    required List<Memo> memoList,
    required MemoFilterType filterType,
  }) = Success;
  factory MemoListState.error() = Error;
}
