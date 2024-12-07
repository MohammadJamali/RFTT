enum InvoiceState {
  pending('pending'),
  created('created'),
  accepted('accepted'),
  canceled('canceled');

  final String value;
  const InvoiceState(this.value);

  static InvoiceState parse(String value) {
    for (final state in InvoiceState.values) {
      if (state.value == value) {
        return state;
      }
    }
    throw ArgumentError('Invalid value for InvoiceState: $value');
  }
}
