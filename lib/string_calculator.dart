class StringCalculator{
  int add(numbersStr){
    if (numbersStr.isEmpty) return 0;
    return numbersStr.split(',').map(int.parse).reduce((prev, current) => prev + current);
  }
}