class StringCalculator{
  int add(String numbersStr){
    if (numbersStr.isEmpty) return 0;
    String delimiter = ',';
    if (numbersStr.startsWith('//')) {
      delimiter = numbersStr[2];
      numbersStr = numbersStr.substring(4);
    }
    return numbersStr.split(RegExp('[$delimiter\n]')).map(int.parse).reduce((a, b) => a + b);
  }
}