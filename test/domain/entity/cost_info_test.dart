import 'package:decimal/decimal.dart';
import 'package:rokas_work/domain/entity/cost_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rokas_work/domain/value_object/cost_type.dart';

void main() {
  late CostInfo dummyEmptyCostInfo;
  late CostInfo dummyCostInfoFromFireStore;
  late Map dummyCostInfotoFireStore;
  late int dummyId;
  late String dummyItemName;
  late Decimal dummyPrice;
  late String dummyMemo;
  late CostType dummyCostType;
  late DateTime dummyTime;

  setUp(() {
    dummyId = 1;
    dummyPrice = Decimal.one;
    dummyMemo = 'memo';
    dummyItemName = 'itemName';
    dummyCostType = CostType.bill;
    dummyTime = DateTime.now();

    dummyEmptyCostInfo = CostInfo.empty();
    dummyCostInfoFromFireStore = CostInfo(
        id: dummyId,
        itemName: dummyItemName,
        price: dummyPrice,
        memo: dummyMemo,
        costType: dummyCostType,
        createTime: dummyTime);
    dummyCostInfotoFireStore = {
      "id": dummyId,
      "itemName": dummyItemName,
      "price": dummyPrice.toString(),
      "memo": dummyMemo,
      "costType": CostTypeHelper.name(dummyCostType),
      "createTime": dummyTime,
    };
  });

  test(
    'CostInfo.empty() is empty',
    () async {
      expect(dummyEmptyCostInfo.id, 0);
      expect(dummyEmptyCostInfo.itemName, '');
      expect(dummyEmptyCostInfo.price, Decimal.zero);
      expect(dummyEmptyCostInfo.costType, CostType.other);
    },
  );

  test(
    'CostInfo.copyWith()',
    () async {
      dummyEmptyCostInfo = dummyEmptyCostInfo.copyWith(
          itemName: '123',
          costType: CostType.dailyLife,
          price: Decimal.ten,
          memo: 'memo123');

      expect(dummyEmptyCostInfo.itemName, '123');
      expect(dummyEmptyCostInfo.costType, CostType.dailyLife);
      expect(dummyEmptyCostInfo.price, Decimal.ten);
      expect(dummyEmptyCostInfo.memo, 'memo123');
    },
  );

  test(
    'CostInfo.fromFirestore()',
    () async {
      expect(dummyCostInfoFromFireStore.id, dummyId);
      expect(dummyCostInfoFromFireStore.itemName, dummyItemName);
      expect(dummyCostInfoFromFireStore.price, dummyPrice);
      expect(dummyCostInfoFromFireStore.memo, dummyMemo);
      expect(dummyCostInfoFromFireStore.costType, dummyCostType);
    },
  );

  test(
    'CostInfo.toFirestore()',
    () async {
      expect(dummyCostInfotoFireStore['id'], dummyId);
      expect(dummyCostInfotoFireStore['itemName'], dummyItemName);
      expect(dummyCostInfotoFireStore['price'], dummyPrice.toString());
      expect(dummyCostInfotoFireStore['memo'], dummyMemo);
      expect(dummyCostInfotoFireStore['costType'],
          CostTypeHelper.name(dummyCostType));
    },
  );
}
