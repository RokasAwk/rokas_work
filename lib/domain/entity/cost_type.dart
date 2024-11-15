import 'package:cloud_firestore/cloud_firestore.dart';

class CostType {
  final int id;
  final String costType;

  CostType({
    required this.id,
    required this.costType,
  });

  factory CostType.empty() => CostType(
        id: 0,
        costType: '',
      );

  CostType copyWith({
    String? costType,
  }) {
    return CostType(
      id: id,
      costType: costType ?? this.costType,
    );
  }

  factory CostType.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return CostType(
      id: data?['id'],
      costType: data?['cost_type'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "cost_type": costType,
    };
  }
}
