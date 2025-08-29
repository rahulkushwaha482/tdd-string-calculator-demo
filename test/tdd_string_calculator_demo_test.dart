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
  test('Handled the new line as delimeter', () {
    expect(stringCal.add('1\n2,3'), equals(6));
  });

  test('Handled custom delimeter and return its sum', () {
    expect(stringCal.add('//;\n1;28'), equals(29));
  });

  test(
    'Pass the Negative numbers and throw the exceptions and negative number',
    () {
      expect(
        () => stringCal.add('-3,7,-6'),
        throwsA(
          predicate(
            (e) => e.toString().contains(
              'Negative numbers are not allowed: -3,-6',
            ),
          ),
        ),
      );
    },
  );
}
