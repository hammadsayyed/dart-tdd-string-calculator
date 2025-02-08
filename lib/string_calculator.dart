class StringCalculator{
  int add(numbersStr){
    if (numbersStr.isEmpty) return 0;
    return int.parse(numbersStr);
  }
}