import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/value_object/to_do_list.dart';

part 'to_do_state.freezed.dart';

@freezed
class ToDoState with _$ToDoState {
  factory ToDoState({
    required DateTime currentTime,
    required List<ToDoList> toDoList,
  }) = _ToDoState;

  factory ToDoState.init() =>
      ToDoState(currentTime: DateTime.now(), toDoList: []);
}
