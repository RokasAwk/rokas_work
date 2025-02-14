import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rokas_work/domain/entity/cost_type.dart';

import 'firestore_service.dart';

class FirestoreCostService implements FirestoreService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  void listenToData() {
    db.collection('cost_type').snapshots().listen((snapshot) {
      for (var doc in snapshot.docs) {
        print(doc.data());
      }
    });
  }

  @override
  Future<void> addData(var data) async {
    data as CostType;
    final docRef = db
        .collection("cost_type")
        .withConverter(
          fromFirestore: CostType.fromFirestore,
          toFirestore: (CostType costType, options) => costType.toFirestore(),
        )
        .doc("cost_type${data.id}");
    try {
      await docRef.set(data);
    } catch (e) {
      print("Error add CostType: $e");
    }
  }

  @override
  Future<void> deleteData(String dataId) async {
    try {
      await db.collection('cost_type').doc(dataId).delete();
    } catch (e) {
      print("Error delete CostType: $e");
    }
  }

  @override
  Future upateData({
    required String dataId,
    required var data,
  }) async {
    data as CostType;
    try {
      await db
          .collection('cost_type')
          .doc('CostType$dataId')
          .update(data.toFirestore());
    } catch (e) {
      print("Error update CostType: $e");
      rethrow;
    }
  }

  @override
  Future<List<CostType>> getData() async {
    List<CostType> CostTypeList = [];
    try {
      QuerySnapshot snapshot = await db.collection("cost_type").get();
      for (var doc in snapshot.docs) {
        Map data = doc.data() as Map;
        CostTypeList.add(CostType(
          id: data['id'],
          title: data['cost_type'],
        ));
      }
    } catch (e) {
      print("Error get cost_type: $e");
    }

    return CostTypeList;
  }
}
