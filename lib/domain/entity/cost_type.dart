import 'package:cloud_firestore/cloud_firestore.dart';

class CostType {
  final int id;
  final String title;

  CostType({
    required this.id,
    required this.title,
  });

  factory CostType.empty() => CostType(
        id: 0,
        title: '',
      );

  CostType copyWith({
    String? title,
  }) {
    return CostType(
      id: id,
      title: title ?? this.title,
    );
  }

  factory CostType.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return CostType(
      id: data?['id'],
      title: data?['cost_type'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "title": title,
    };
  }
}
