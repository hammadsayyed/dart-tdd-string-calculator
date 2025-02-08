import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_calculator/string_calculator.dart';

void main(){
  test('Empty string should return 0', (){
    final StringCalculator stringCalculator = StringCalculator();
    expect(stringCalculator.add(""), 0);
  });

  test('A single number should return the number itself', () {
    var calculator = StringCalculator();
    expect(calculator.add('1'), 1);
  });

  test('Two numbers separated by a comma should return the sum of those numbers.', () {
    var calculator = StringCalculator();
    expect(calculator.add('1,2'), 3);
  });
}