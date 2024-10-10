import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';
import 'to_do_state.dart';

abstract class ToDoNotifier extends StateNotifier<ToDoState> {
  ToDoNotifier(super.state);

  void updateCurrentTime({
    required DateTime currentTime,
  });
}

class ToDoNotifierImpl extends ToDoNotifier {
  final AppRouter appRouter;

  ToDoNotifierImpl({
    required this.appRouter,
  }) : super(ToDoState.init());

  @override
  void updateCurrentTime({
    required DateTime currentTime,
  }) {
    state = state.copyWith(currentTime: currentTime);
  }
}
