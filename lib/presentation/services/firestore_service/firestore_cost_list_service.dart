import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:decimal/decimal.dart';
import 'package:rokas_work/domain/value_object/cost_type.dart';

import '../../../domain/entity/cost_info.dart';
import 'firestore_service.dart';

class FirestoreCostListService implements FirestoreService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  void listenToData() {
    db.collection('cost_item').snapshots().listen((snapshot) {
      for (var doc in snapshot.docs) {
        print(doc.data());
      }
    });
  }

  @override
  Future<void> addData(var data) async {
    data as CostInfo;
    final docRef = db
        .collection('cost_item')
        .withConverter(
          fromFirestore: CostInfo.fromFirestore,
          toFirestore: (CostInfo cost, options) => cost.toFirestore(),
        )
        .doc("cost${data.id}");
    try {
      await docRef.set(data);
    } catch (e) {
      print("Error add cost: $e");
    }
  }

  @override
  Future<void> deleteData(String dataId) async {
    try {
      await db.collection('cost_item').doc(dataId).delete();
    } catch (e) {
      print("Error delete cost: $e");
    }
  }

  @override
  Future upateData({
    required String dataId,
    required var data,
  }) async {
    data as CostInfo;
    try {
      await db
          .collection('cost_item')
          .doc('cost_$dataId')
          .update(data.toFirestore());
    } catch (e) {
      print("Error update cost: $e");
      rethrow;
    }
  }

  @override
  Future<List<CostInfo>> getData() async {
    List<CostInfo> costList = [];
    try {
      QuerySnapshot snapshot = await db.collection('cost_item').get();
      for (var doc in snapshot.docs) {
        Map data = doc.data() as Map;
        costList.add(CostInfo(
            id: data['id'],
            itemName: data['itemName'],
            price: Decimal.parse(data['price']),
            costType: CostTypeHelper.toCostType(data['costType']),
            createTime: data['createTime'].toDate()));
      }
    } catch (e) {
      print("Error get cost: $e");
    }

    return costList;
  }
}
