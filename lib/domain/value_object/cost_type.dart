import 'package:cloud_firestore/cloud_firestore.dart';

enum CostType {
  eat,
  drink,
  dailyLife,
  bill,
  entertainment,
  invest,
  pet,
  learn,
  traffic,
  hotel,
  other,
}

extension CostTypeHelper on CostType {
  static CostType toCostType(String costTypeString) {
    switch (costTypeString) {
      case '伙食':
        return CostType.eat;
      case '飲料':
        return CostType.drink;
      case '生活用品':
        return CostType.dailyLife;
      case '帳單':
        return CostType.bill;
      case '娛樂':
        return CostType.entertainment;
      case '寵物':
        return CostType.pet;
      case '學習':
        return CostType.learn;
      case '交通':
        return CostType.traffic;
      case '住宿':
        return CostType.hotel;
      default:
        return CostType.other;
    }
  }

  static String name(CostType type) {
    switch (type) {
      case CostType.eat:
        return '伙食';
      case CostType.drink:
        return '飲料';
      case CostType.dailyLife:
        return '生活用品';
      case CostType.bill:
        return '帳單';
      case CostType.entertainment:
        return '娛樂';
      case CostType.pet:
        return '寵物';
      case CostType.learn:
        return '學習';
      case CostType.traffic:
        return '交通';
      case CostType.hotel:
        return '住宿';
      case CostType.other:
        return '其他';
      default:
        return '';
    }
  }

  static fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return CostTypeHelper.toCostType(data?['cost_type']);
  }

  Map<String, dynamic> toFirestore(CostType type) {
    return {
      "cost_type": type.name,
    };
  }
}
