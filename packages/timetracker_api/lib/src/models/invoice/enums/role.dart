enum Role {
  payee('payee'),
  payer('payer'),
  thirdParty('third-party');

  final String value;
  const Role(this.value);
}
