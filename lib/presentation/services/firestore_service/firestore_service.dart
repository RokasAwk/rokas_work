import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rokas_work/domain/entity/momo.dart';

abstract class FirestoreService {
  void listenToMemoData();

  Future<void> addMemoData(Memo memo);
  Future<void> deleteMemoData(String memoId);
  Future<void> upateMemoData({
    required String memoId,
    required Memo memo,
  });
  Future<void> getMemoData();
}

class FirestoreServiceImpl implements FirestoreService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  void listenToMemoData() {
    db.collection('memo').snapshots().listen((snapshot) {
      for (var doc in snapshot.docs) {
        print(doc.data());
      }
    });
  }

  @override
  Future<void> addMemoData(Memo memo) async {
    final docRef = db
        .collection("memo")
        .withConverter(
          fromFirestore: Memo.fromFirestore,
          toFirestore: (Memo memo, options) => memo.toFirestore(),
        )
        .doc("memo_${memo.id}");
    try {
      await docRef.set(memo);
    } catch (e) {
      print("Error add memo: $e");
    }
  }

  @override
  Future<void> deleteMemoData(String memoId) async {
    try {
      await db.collection('memo').doc(memoId).delete();
    } catch (e) {
      print("Error delete memo: $e");
    }
  }

  @override
  Future upateMemoData({
    required String memoId,
    required Memo memo,
  }) async {
    try {
      await db.collection('memo').doc(memoId).update(memo.toFirestore());
    } catch (e) {
      print("Error update memo: $e");
    }
  }

  @override
  Future<void> getMemoData() async {
    try {
      QuerySnapshot snapshot = await db.collection('memo').get();
      for (var doc in snapshot.docs) {
        print(doc.data());
      }
    } catch (e) {
      print("Error get memo: $e");
    }
  }
}
