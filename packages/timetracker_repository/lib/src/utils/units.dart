BigInt parseUnits(String value, int decimals) {
  var parts = value.split('.');
  var integer = parts[0];
  var fraction = parts.length > 1 ? parts[1] : '0';

  final negative = integer.startsWith('-');
  if (negative) integer = integer.substring(1);

  // Trim trailing zeros
  fraction = fraction.replaceAll(RegExp(r'(0+)$'), '');

  if (decimals == 0) {
    if ((double.tryParse('.$fraction') ?? 0) >= 0.5) {
      integer = (BigInt.parse(integer) + BigInt.one).toString();
    }
    fraction = '';
  } else if (fraction.length > decimals) {
    final left = fraction.substring(0, decimals - 1);
    final unit = fraction[decimals - 1];
    final right = fraction.substring(decimals);

    final rounded = (double.tryParse('$unit.$right') ?? 0).round();
    if (rounded > 9) {
      fraction = (BigInt.parse(left) + BigInt.one)
          .toString()
          .padLeft(left.length + 1, '0');
    } else {
      fraction = '$left$rounded';
    }

    if (fraction.length > decimals) {
      fraction = fraction.substring(1);
      integer = (BigInt.parse(integer) + BigInt.one).toString();
    }

    fraction = fraction.substring(0, decimals);
  } else {
    fraction = fraction.padRight(decimals, '0');
  }

  return BigInt.parse('${negative ? '-' : ''}$integer$fraction');
}
