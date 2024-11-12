import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';
import '1a2b_state.dart';

abstract class OneATwoBNotifier extends StateNotifier<OneATwoBState> {
  OneATwoBNotifier(super.state);

  void addToGuessList({
    required List<String> code,
  });

  void resetGame();
  void updateACount(int aCount);
  void updateBCount(int bCount);
  void updateTryCountList({
    required int tryCount,
  });
}

class OneATwoBNotifierImpl extends OneATwoBNotifier {
  final AppRouter appRouter;

  OneATwoBNotifierImpl({
    required this.appRouter,
  }) : super(OneATwoBState.init());

  @override
  void addToGuessList({
    required List<String> code,
  }) {
    int tryCount = state.tryCount;
    var newCount = tryCount;
    List<String> newList = List.from(state.guessList)..add(code.join());

    newCount++;
    state = state.copyWith(
      guessList: newList,
      tryCount: newCount,
    );
  }

  @override
  void resetGame() {
    state = state.copyWith(
      radomAnswer: [
        Random().nextInt(9).toString(),
        Random().nextInt(9).toString(),
        Random().nextInt(9).toString(),
        Random().nextInt(9).toString(),
      ],
      aCount: 0,
      bCount: 0,
      tryCount: 0,
      guessList: [],
    );
  }

  @override
  void updateACount(int aCount) {
    state = state.copyWith(aCount: aCount);
  }

  @override
  void updateBCount(int bCount) {
    state = state.copyWith(bCount: bCount); // TODO: implement updateBCount
  }

  @override
  void updateTryCountList({
    required int tryCount,
  }) {
    List<String> newList = List.from(state.tryCountList)..add('$tryCount');

    state = state.copyWith(tryCountList: newList);

    resetGame();
  }
}
