import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rokas_work/domain/value_object/ramen_location.dart';

import '../../../domain/entity/memo.dart';
import 'firestore_service.dart';

class FirestoreRamenMapService implements FirestoreService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  void listenToData() {
    db.collection('ramen_location').snapshots().listen((snapshot) {
      for (var doc in snapshot.docs) {
        print(doc.data());
      }
    });
  }

  @override
  Future<void> addData(var data) async {
    data as Memo;
    final docRef = db
        .collection("ramenMap")
        .withConverter(
          fromFirestore: Memo.fromFirestore,
          toFirestore: (Memo memo, options) => memo.toFirestore(),
        )
        .doc("ramenMap_${data.id}");
    try {
      await docRef.set(data);
    } catch (e) {
      print("Error add ramenMap: $e");
    }
  }

  @override
  Future<void> deleteData(String dataId) async {
    try {
      await db.collection('ramen_location').doc(dataId).delete();
    } catch (e) {
      print("Error delete ramenMap: $e");
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
          .collection('ramen_location')
          .doc('memo_$dataId')
          .update(data.toFirestore());
    } catch (e) {
      print("Error update ramenMap: $e");
      rethrow;
    }
  }

  @override
  Future<List> getData() async {
    List<RamenLocation> memoList = [];
    try {
      QuerySnapshot snapshot = await db.collection('ramen_location').get();
      for (var doc in snapshot.docs) {
        Map data = doc.data() as Map;
        memoList.add(RamenLocation(
            xLocation: data['location'].latitude,
            yLocation: data['location'].longitude,
            shopName: data['shopName']));
      }
    } catch (e) {
      print("Error get ramenMap: $e");
    }

    return memoList;
  }
}
