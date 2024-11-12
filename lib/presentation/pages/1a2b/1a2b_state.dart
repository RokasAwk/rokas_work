import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '1a2b_state.freezed.dart';

@freezed
class OneATwoBState with _$OneATwoBState {
  factory OneATwoBState({
    required List<String> radomAnswer,
    required int aCount, // 數字跟位置都正確
    required int bCount, // 數字正確、位置錯誤
    required int tryCount, // 猜的次數
    required List<String> guessList, // 猜過的組合
    required List<String> tryCountList, // 猜對的次數集合
  }) = _OneATwoBState;

  factory OneATwoBState.init() => OneATwoBState(
        radomAnswer: [
          Random().nextInt(9).toString(),
          Random().nextInt(9).toString(),
          Random().nextInt(9).toString(),
          Random().nextInt(9).toString(),
        ],
        aCount: 0,
        bCount: 0,
        tryCount: 0,
        guessList: List.empty(),
        tryCountList: List.empty(),
      );
}
