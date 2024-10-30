import 'package:rokas_work/domain/entity/memo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DateTime dummyCreatedTime;
  late DateTime dummyEditedTime;
  late Memo dummyEmptyMemo;
  late Memo dummyMemoFromFireStore;
  late Map dummyMemotoFireStore;

  setUp(() {
    dummyCreatedTime = DateTime.fromMicrosecondsSinceEpoch(1640979000000000);
    dummyEditedTime = DateTime.fromMicrosecondsSinceEpoch(1640979000001000);
    dummyEmptyMemo = Memo.empty();
    dummyMemoFromFireStore = Memo(
      id: 123,
      title: 'title',
      body: 'body',
      createdTime: dummyCreatedTime,
      editedTime: dummyEditedTime,
      isPin: true,
      isDeleted: false,
    );
    dummyMemotoFireStore = {
      "id": 123,
      "title": 'title',
      "body": 'body',
      "createdTime": dummyCreatedTime,
      "editedTime": dummyEditedTime,
      "isPin": true,
      "isDeleted": false,
    };
  });

  test(
    'Memo.empty() is empty',
    () async {
      expect(dummyEmptyMemo.id, 0);
      expect(dummyEmptyMemo.title, '');
      expect(dummyEmptyMemo.body, '');
      expect(dummyEmptyMemo.isPin, false);
      expect(dummyEmptyMemo.isDeleted, false);
    },
  );

  test(
    'Memo.copyWith()',
    () async {
      dummyEmptyMemo = dummyEmptyMemo.copyWith(
        title: '123',
        body: '6666',
        editedTime: DateTime.fromMicrosecondsSinceEpoch(0),
        isPin: true,
        isDeleted: true,
      );

      expect(dummyEmptyMemo.title, '123');
      expect(dummyEmptyMemo.body, '6666');
      expect(dummyEmptyMemo.editedTime, DateTime.fromMicrosecondsSinceEpoch(0));
      expect(dummyEmptyMemo.isPin, true);
      expect(dummyEmptyMemo.isDeleted, true);
    },
  );

  test(
    'Memo.fromFirestore()',
    () async {
      expect(dummyMemoFromFireStore.id, 123);
      expect(dummyMemoFromFireStore.title, 'title');
      expect(dummyMemoFromFireStore.body, 'body');
      expect(dummyMemoFromFireStore.createdTime, dummyCreatedTime);
      expect(dummyMemoFromFireStore.editedTime, dummyEditedTime);
      expect(dummyMemoFromFireStore.isPin, true);
      expect(dummyMemoFromFireStore.isDeleted, false);
    },
  );

  test(
    'Memo.toFirestore()',
    () async {
      expect(dummyMemotoFireStore['id'], 123);
      expect(dummyMemotoFireStore['title'], 'title');
      expect(dummyMemotoFireStore['body'], 'body');
      expect(dummyMemotoFireStore['createdTime'], dummyCreatedTime);
      expect(dummyMemotoFireStore['editedTime'], dummyEditedTime);
      expect(dummyMemotoFireStore['isPin'], true);
      expect(dummyMemotoFireStore['isDeleted'], false);
    },
  );
}
