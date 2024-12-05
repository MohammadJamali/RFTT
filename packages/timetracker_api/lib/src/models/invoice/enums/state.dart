enum State {
  pending('pending'),
  created('created'),
  accepted('accepted'),
  canceled('canceled');

  final String value;
  const State(this.value);
}
