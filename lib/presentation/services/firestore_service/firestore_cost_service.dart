import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rokas_work/domain/entity/cost_type.dart';

import '../../../domain/entity/memo.dart';
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
    data as Memo;
    final docRef = db
        .collection("cost_type")
        .withConverter(
          fromFirestore: Memo.fromFirestore,
          toFirestore: (Memo memo, options) => memo.toFirestore(),
        )
        .doc("cost_type${data.id}");
    try {
      await docRef.set(data);
    } catch (e) {
      print("Error add cost_type: $e");
    }
  }

  @override
  Future<void> deleteData(String dataId) async {
    try {
      await db.collection('cost_type').doc(dataId).delete();
    } catch (e) {
      print("Error delete cost_type: $e");
    }
  }

  @override
  Future upateData({
    required String dataId,
    required var data,
  }) async {
    data as Memo;
    try {
      await db
          .collection('cost_type')
          .doc('cost_type$dataId')
          .update(data.toFirestore());
    } catch (e) {
      print("Error update cost_type: $e");
      rethrow;
    }
  }

  @override
  Future<List> getData() async {
    List<CostType> costTypeList = [];
    try {
      QuerySnapshot snapshot = await db.collection('cost_type').get();
      for (var doc in snapshot.docs) {
        Map data = doc.data() as Map;
        costTypeList.add(CostType(
          id: data['id'],
          costType: data['cost_type'],
        ));
      }
    } catch (e) {
      print("Error get cost_type: $e");
    }

    return costTypeList;
  }
}
