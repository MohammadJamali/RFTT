enum CurrencyType {
  // ETH Currency type refers to any kind of blockchain native
  //currency - excepted bitcoin
  eth('ETH'),
  // BTC Currency type refers to the Bitcoin native currency
  btc('BTC'),
  // ISO4217 Currency type refers to fiat currencies
  // (e.g. EUR, USD, ...)
  iso4217('ISO4217'),
  // ERC20 Currency type refers to any kind of fungible token
  // (USDC, DAI, ...)
  erc20('ERC20'),
  // ERC777 Currency type refers to any kind of streamable
  //fungible token (USDCx, DAIx, ...)
  erc777('ERC777');

  final String value;
  const CurrencyType(this.value);
}
