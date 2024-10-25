import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rokas_work/domain/entity/momo.dart';
import 'package:rokas_work/presentation/services/firestore_service/firestore_memo_service.dart';

import '../../routers/router.dart';
import 'memo_list_state.dart';

abstract class MemoListNotifier extends StateNotifier<MemoListState> {
  MemoListNotifier(super.state);

  void goToAddMemoPage();

  void addMemo({
    required String title,
    required String body,
  });
}

class MemoListNotifierImpl extends MemoListNotifier {
  final AppRouter appRouter;

  MemoListNotifierImpl({
    required this.appRouter,
  }) : super(MemoListState.init());

  @override
  void goToAddMemoPage() {
    appRouter.push(const AddMemoRoute());
  }

  @override
  void addMemo({
    required String title,
    required String body,
  }) {
    Memo memoData = Memo(
      id: state.memoList.length + 1,
      title: title,
      body: body,
      createdTime: DateTime.now(),
      editedTime: DateTime.now(),
    );
    FirestoreMemoService().addData(memoData);
  }
}
