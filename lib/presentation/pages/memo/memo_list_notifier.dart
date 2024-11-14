import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/entity/memo.dart';
import 'package:rokas_work/domain/value_object/memo_filter_type.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_memo_service.dart';

import '../../routers/router.dart';
import 'memo_list_state.dart';

abstract class MemoListNotifier extends StateNotifier<MemoListState> {
  MemoListNotifier(super.state);

  void goToAddMemoPage(Memo? existedMemo);

  void addMemo({
    required String title,
    required String body,
  });

  void deleteMemo({
    required int memoId,
  });

  void editMemo({
    required Memo originMemoData,
    required String title,
    required String body,
  });

  void updateMemoList({
    required List memoList,
  });

  void onChangeMemoFilterType({
    required MemoFilterType type,
  });
}

class MemoListNotifierImpl extends MemoListNotifier {
  final AppRouter appRouter;

  MemoListNotifierImpl({
    required this.appRouter,
  }) : super(MemoListState.loading());

  @override
  void goToAddMemoPage(Memo? existedMemo) {
    appRouter.push(AddMemoRoute(existedMemo: existedMemo));
  }

  @override
  void addMemo({
    required String title,
    required String body,
  }) {
    Memo memoData = Memo(
      id: (state as Success).memoList.length + 1,
      title: title,
      body: body,
      createdTime: DateTime.now(),
      editedTime: DateTime.now(),
    );
    FirestoreMemoService().addData(memoData);
  }

  @override
  void deleteMemo({
    required int memoId,
  }) {
    FirestoreMemoService().deleteData("memo_$memoId");
  }

  @override
  void editMemo({
    required Memo originMemoData,
    required String title,
    required String body,
  }) {
    Memo updateMemo = Memo(
        id: originMemoData.id,
        title: title,
        body: body,
        createdTime: originMemoData.createdTime,
        editedTime: DateTime.now(),
        isPin: originMemoData.isPin,
        isDeleted: false);
    try {
      FirestoreMemoService().upateData(
        dataId: '${originMemoData.id}',
        data: updateMemo,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  void updateMemoList({required List memoList}) {
    state = Success(
        memoList: memoList as List<Memo>,
        filterType: MemoFilterType.createdTime);
  }

  @override
  void onChangeMemoFilterType({required MemoFilterType type}) {
    List<Memo> sortedMemoList = (state as Success).memoList;
    if (type == MemoFilterType.createdTime) {
      sortedMemoList.sort((a, b) => a.createdTime.compareTo(b.createdTime));
    } else {
      sortedMemoList.sort((a, b) => a.editedTime.compareTo(b.editedTime));
    }

    state = (state as Success).copyWith(
      filterType: type,
      memoList: sortedMemoList,
    );
  }
}
