import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_calculator/string_calculator.dart';

void main(){
  test('Empty string should return 0', (){
    final StringCalculator stringCalculator = StringCalculator();
    expect(stringCalculator.add(""), 0);
  });
}