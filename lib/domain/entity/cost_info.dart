import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:decimal/decimal.dart';
import 'package:rokas_work/domain/value_object/cost_type.dart';

class CostInfo {
  final int id;
  final String itemName;
  final Decimal price;
  final String? memo;
  final CostType costType;
  final DateTime createTime;

  CostInfo({
    required this.id,
    required this.itemName,
    required this.price,
    this.memo,
    required this.costType,
    required this.createTime,
  });

  factory CostInfo.empty() => CostInfo(
        id: 0,
        itemName: '',
        price: Decimal.zero,
        memo: '',
        costType: CostType.other,
        createTime: DateTime.now(),
      );

  CostInfo copyWith({
    CostType? costType,
    String? itemName,
    Decimal? price,
    String? memo,
  }) {
    return CostInfo(
      id: id,
      itemName: itemName ?? this.itemName,
      price: price ?? this.price,
      memo: memo ?? this.memo,
      costType: costType ?? this.costType,
      createTime: createTime,
    );
  }

  factory CostInfo.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return CostInfo(
        id: data?['id'],
        itemName: data?['itemName'],
        price: data?['price'],
        costType: CostTypeHelper.toCostType(data?['costType']),
        createTime: data?['createTime']);
  }

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "itemName": itemName,
      "price": price.toString(),
      "costType": CostTypeHelper.name(costType),
      "createTime": createTime,
    };
  }
}
