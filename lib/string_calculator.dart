class StringCalculator{
  int add(numbersStr){
    if (numbersStr.isEmpty) return 0;
    final normalized = numbersStr.replaceAll('\n', ',');
    return normalized.split(',').map(int.parse).reduce((prev, current) => prev + current);
  }
}