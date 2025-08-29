import 'package:tdd_string_calculator_demo/string_calculator_demo.dart';
import 'package:test/test.dart';

void main() {
  final stringCal = StringAdditionCalculator();

  test('If we pass empty String ,it will return 0', () {
    expect(stringCal.add(''), equals(0));
  });
}
