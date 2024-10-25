import 'package:cloud_firestore/cloud_firestore.dart';

class Memo {
  final int id;
  final String title;
  final String? body;
  final DateTime createdTime;
  final DateTime editedTime;
  final bool isPin;
  final bool isDeleted;

  Memo({
    required this.id,
    required this.title,
    this.body,
    required this.createdTime,
    required this.editedTime,
    this.isPin = false,
    this.isDeleted = false,
  });

  factory Memo.empty() => Memo(
        id: 0,
        title: '',
        body: '',
        createdTime: DateTime.now(),
        editedTime: DateTime.now(),
        isPin: false,
        isDeleted: false,
      );

  Memo copyWith({
    String? title,
    String? body,
    DateTime? editedTime,
    bool? isPin,
    bool? isDeleted,
  }) {
    return Memo(
      id: id,
      title: title ?? this.title,
      body: body ?? this.body,
      createdTime: createdTime,
      editedTime: editedTime ?? this.editedTime,
      isPin: isPin ?? this.isPin,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  factory Memo.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Memo(
      id: data?['id'],
      title: data?['title'],
      body: data?['body'],
      createdTime: DateTime.fromMillisecondsSinceEpoch(data?['createdTime']),
      editedTime: DateTime.fromMillisecondsSinceEpoch(data?['editedTime']),
      isPin: data?['isPin'],
      isDeleted: data?['isDeleted'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "title": title,
      if (body != null) "body": body,
      "createdTime": createdTime,
      "editedTime": editedTime,
      "isPin": isPin,
      "isDeleted": isDeleted,
    };
  }
}
