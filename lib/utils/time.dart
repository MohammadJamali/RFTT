String secondToMinutes(int time) {
  final minutes = (time ~/ 60).toString().padLeft(2, '0');
  final seconds = (time % 60).toString().padLeft(2, '0');

  return '$minutes:$seconds';
}
