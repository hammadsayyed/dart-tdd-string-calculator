class StringCalculator{
  int _addCallCount = 0;

  int add(String numbersStr){
    _addCallCount +=1;
    if (numbersStr.isEmpty) return 0;
    String delimiter = ',';
    if (numbersStr.startsWith('//')) {
      delimiter = numbersStr[2];
      numbersStr = numbersStr.substring(4);
    }
    var numberList = numbersStr.split(RegExp('[$delimiter\n]')).map(int.parse).toList();
    var negatives = numberList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('Negatives are not allowed: ${negatives.join(',')}');
    }
    return numberList.where((n) => n <= 1000).reduce((a, b) => a + b);
  }

  int getCalledCount() {
    return _addCallCount;
  }
}