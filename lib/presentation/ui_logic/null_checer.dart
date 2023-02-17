String nullChecker(dynamic input) {
  if (input == null) {
    return "-";
  } else {
    final num result = input as num;
    return result.round().toString();
  }
}
