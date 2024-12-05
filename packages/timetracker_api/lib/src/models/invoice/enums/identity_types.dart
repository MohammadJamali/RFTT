enum IdentityType {
  ethereumAddress('ethereumAddress'),
  ethereumSmartContract('ethereumSmartContract');

  final String value;
  const IdentityType(this.value);
}
