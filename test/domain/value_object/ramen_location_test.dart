import 'package:rokas_work/domain/value_object/ramen_location.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late RamenLocation dummyEmptyRamenLocation;
  late RamenLocation dummyRamenLocationFromFireStore;
  late Map dummyRamenLocationtoFireStore;

  setUp(() {
    dummyEmptyRamenLocation = RamenLocation.empty();
    dummyRamenLocationFromFireStore = RamenLocation(
      xLocation: 23.12345,
      yLocation: 123.45678,
      shopName: 'Ramen Shop',
    );
    dummyRamenLocationtoFireStore = {
      "xLocation": 23.12345,
      "yLocation": 123.45678,
      "shopName": 'Ramen Shop',
    };
  });

  test(
    'RamenLocation.empty() is empty',
    () async {
      expect(dummyEmptyRamenLocation.xLocation, 0);
      expect(dummyEmptyRamenLocation.yLocation, 0);
      expect(dummyEmptyRamenLocation.shopName, '');
    },
  );

  test(
    'RamenLocation.copyWith()',
    () async {
      dummyEmptyRamenLocation = dummyEmptyRamenLocation.copyWith(
        xLocation: 23.456789,
        yLocation: 123.45678,
        shopName: 'Ramen Life',
      );

      expect(dummyEmptyRamenLocation.xLocation, 23.456789);
      expect(dummyEmptyRamenLocation.yLocation, 123.45678);
      expect(dummyEmptyRamenLocation.shopName, 'Ramen Life');
    },
  );

  test(
    'RamenLocation.fromFirestore()',
    () async {
      expect(dummyRamenLocationFromFireStore.xLocation, 23.12345);
      expect(dummyRamenLocationFromFireStore.yLocation, 123.45678);
      expect(dummyRamenLocationFromFireStore.shopName, 'Ramen Shop');
    },
  );

  test(
    'RamenLocation.toFirestore()',
    () async {
      expect(dummyRamenLocationtoFireStore['xLocation'], 23.12345);
      expect(dummyRamenLocationtoFireStore['yLocation'], 123.45678);
      expect(dummyRamenLocationtoFireStore['shopName'], 'Ramen Shop');
    },
  );
}
