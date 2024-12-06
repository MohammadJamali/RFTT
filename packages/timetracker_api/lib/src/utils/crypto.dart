import 'dart:math';

String generateSalt({int length = 16}) {
  final random = Random.secure();
  final bytes = List<int>.generate(length ~/ 2, (_) => random.nextInt(256));
  return bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
}
