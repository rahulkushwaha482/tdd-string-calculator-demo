import 'dart:math';

import 'package:tdd_string_calculator_demo/string_calculator_demo.dart';
import 'package:test/test.dart';

void main() {
  final stringCal = StringAdditionCalculator();

  test('If we pass empty String ,it will return 0', () {
    expect(stringCal.add(''), equals(0));
  });

  test('send single number return that number itself', () {
    expect(stringCal.add('3'), equals(3));
  });

  test('two number return its sum', () {
    expect(stringCal.add('2,60'), equals(62));
  });

  test('multiple number return its sum', () {
    expect(stringCal.add('2,60,0,5'), equals(67));
  });
}
