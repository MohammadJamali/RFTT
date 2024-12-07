int getCurrentTimestampInSeconds() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}

DateTime parseDateTimeFromTimestamp(int unixTimestamp) {
  return DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
}
