// my_test.dart
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Success Test', () {
    expect(1, 1);
  });

  test('Failed Test', () {
    expect(1, 2);
  });
}
