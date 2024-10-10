import 'package:rokas_work/domain/value_object/to_do_item.dart';

class ToDoList {
  final String title;
  final String? body;
  final DateTime creatTime;
  final DateTime editTime;
  final bool isPin;
  final List<ToDoItem> toDoList;

  ToDoList({
    required this.title,
    this.body,
    required this.creatTime,
    required this.editTime,
    this.isPin = false,
    required this.toDoList,
  });

  factory ToDoList.empty() => ToDoList(
        title: '',
        body: '',
        creatTime: DateTime.now(),
        editTime: DateTime.now(),
        isPin: false,
        toDoList: [],
      );

  ToDoList copyWith({
    String? title,
    String? body,
    DateTime? editTime,
    bool? isPin,
    List<ToDoItem>? toDoList,
  }) {
    return ToDoList(
      title: title ?? this.title,
      body: body ?? this.body,
      creatTime: creatTime,
      editTime: editTime ?? this.editTime,
      isPin: isPin ?? this.isPin,
      toDoList: toDoList ?? this.toDoList,
    );
  }
}
