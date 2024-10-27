abstract class FirestoreService {
  void listenToData();

  Future<void> addData(var data);
  Future<void> deleteData(String dataId);
  Future<void> upateData({
    required String dataId,
    required var data,
  });
  Future<List> getData();
}
