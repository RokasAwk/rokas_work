import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, E> with _$Result {
  factory Result.success(T data) = _Result;
  factory Result.error(E error) = _Error;
}
