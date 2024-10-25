import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';
import 'memo_list_state.dart';

abstract class MemoListNotifier extends StateNotifier<MemoListState> {
  MemoListNotifier(super.state);

  void updateCurrentTime({
    required DateTime currentTime,
  });
}

class MemoListNotifierImpl extends MemoListNotifier {
  final AppRouter appRouter;

  MemoListNotifierImpl({
    required this.appRouter,
  }) : super(MemoListState.init());

  @override
  void updateCurrentTime({
    required DateTime currentTime,
  }) {}
}
