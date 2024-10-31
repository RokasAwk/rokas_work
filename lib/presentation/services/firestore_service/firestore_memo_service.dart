import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entity/memo.dart';
import 'firestore_service.dart';

class FirestoreMemoService implements FirestoreService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  void listenToData() {
    db.collection('memo').snapshots().listen((snapshot) {
      for (var doc in snapshot.docs) {
        print(doc.data());
      }
    });
  }

  @override
  Future<void> addData(var data) async {
    data as Memo;
    final docRef = db
        .collection("memo")
        .withConverter(
          fromFirestore: Memo.fromFirestore,
          toFirestore: (Memo memo, options) => memo.toFirestore(),
        )
        .doc("memo_${data.id}");
    try {
      await docRef.set(data);
    } catch (e) {
      print("Error add memo: $e");
    }
  }

  @override
  Future<void> deleteData(String dataId) async {
    try {
      await db.collection('memo').doc(dataId).delete();
    } catch (e) {
      print("Error delete memo: $e");
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
          .collection('memo')
          .doc('memo_$dataId')
          .update(data.toFirestore());
    } catch (e) {
      print("Error update memo: $e");
      rethrow;
    }
  }

  @override
  Future<List> getData() async {
    List<Memo> memoList = [];
    try {
      QuerySnapshot snapshot = await db.collection('memo').get();
      for (var doc in snapshot.docs) {
        Map data = doc.data() as Map;
        memoList.add(Memo(
            id: data['id'],
            title: data['title'],
            body: data['body'],
            createdTime: data['createdTime'].toDate(),
            editedTime: data['editedTime'].toDate(),
            isPin: data['isPin'],
            isDeleted: data['isDeleted']));
      }
    } catch (e) {
      print("Error get memo: $e");
    }

    return memoList;
  }
}
