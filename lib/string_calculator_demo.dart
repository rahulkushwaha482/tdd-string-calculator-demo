class StringAdditionCalculator {
  int add(String number) {
    if (number.isEmpty) {
      return 0;
    }
    String delimiter = ',';
    if (number.startsWith('//')) {
      var parts = number.split('\n');
      delimiter = parts[0].substring(2);
      number = parts.sublist(1).join('\n');
    }

    number = number.replaceAll('\n', delimiter);

    final nums = number
        .split(delimiter)
        .where((n) => n.isNotEmpty)
        .map(int.parse)
        .toList();

    final negatives = nums.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception(
        'Negative numbers are not allowed: ${negatives.join(",")}',
      );
    }
    var sum = 0;
    for (var n in nums) {
      sum += n;
    }

    return sum;
  }
}
