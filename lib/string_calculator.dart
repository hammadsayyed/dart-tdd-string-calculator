class StringCalculator {
  int _addCallCount = 0;

  int add(String numbersStr) {
    _addCallCount += 1;
    if (numbersStr.isEmpty) return 0;
    List<String> delimiters = [','];
    if (numbersStr.startsWith('//')) {
      if (numbersStr[2] == '[') {
        var delimiterSection =
            numbersStr.substring(3, numbersStr.indexOf('\n'));
        delimiters = delimiterSection
            .split(']')
            .map((d) => d.replaceAll('[', ''))
            .toList();
        numbersStr = numbersStr.substring(numbersStr.indexOf('\n') + 1);
      } else {
        delimiters = [numbersStr[2]];
        numbersStr = numbersStr.substring(4);
      }
    } else {
      numbersStr = numbersStr.replaceAll('\n', ',');
    }

    var regex = RegExp(delimiters.map((d) => RegExp.escape(d)).join('|'));
    var numberList = numbersStr.split(regex).map(int.parse).toList();
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
