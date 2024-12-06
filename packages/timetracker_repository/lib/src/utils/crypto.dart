import 'dart:convert' show utf8;
import 'package:convert/convert.dart' show hex;
import 'package:pointycastle/export.dart';

String keccak256Hash(String data) {
  final digest = KeccakDigest(256);
  final hash = hex.encode(digest.process(utf8.encode(data)));
  return '0x$hash';
}
