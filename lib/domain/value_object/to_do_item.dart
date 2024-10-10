class ToDoItem {
  final String title;
  final String? body;
  final bool? isDone;
  final List<String> tagList;

  ToDoItem({
    required this.title,
    this.body,
    this.isDone = false,
    required this.tagList,
  });

  factory ToDoItem.empty() => ToDoItem(
        title: '',
        body: '',
        isDone: false,
        tagList: [],
      );

  ToDoItem copyWith({
    String? title,
    String? body,
    bool? isDone,
    List<String>? tagList,
  }) {
    return ToDoItem(
      title: title ?? this.title,
      body: body ?? this.body,
      isDone: isDone ?? this.isDone,
      tagList: tagList ?? this.tagList,
    );
  }
}
