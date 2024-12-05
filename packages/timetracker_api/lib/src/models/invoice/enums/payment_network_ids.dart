enum PaymentNetworkId {
  bitcoinAddressBased('pn-bitcoin-address-based'),
  testnetBitcoinAddressBased('pn-testnet-bitcoin-address-based'),
  erc20AddressBased('pn-erc20-address-based'),
  erc20ProxyContract('pn-erc20-proxy-contract'),
  erc20FeeProxyContract('pn-erc20-fee-proxy-contract'),
  erc777Stream('pn-erc777-stream'),
  ethFeeProxyContract('pn-eth-fee-proxy-contract'),
  ethInputData('pn-eth-input-data'),
  nativeToken('pn-native-token'),
  anyToNativeToken('pn-any-to-native-token'),
  anyDeclarative('pn-any-declarative'),
  anyToErc20Proxy('pn-any-to-erc20-proxy'),
  anyToEthProxy('pn-any-to-eth-proxy'),
  erc20TransferableReceivable('pn-erc20-transferable-receivable'),
  meta('pn-meta');

  final String value;
  const PaymentNetworkId(this.value);
}
