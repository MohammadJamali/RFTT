import 'dart:convert' show utf8;

import 'package:convert/convert.dart' show hex;
import 'package:sha3/sha3.dart' show SHA3, SHA3_PADDING;

String keccak256Hash(String data) {
  final sha3 = SHA3(256, SHA3_PADDING, 256);
  sha3.update(utf8.encode(data));

  return '0x${hex.encode(sha3.digest())}';
}
