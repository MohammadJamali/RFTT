import 'package:timetracker_api/src/models/models.dart';

const Map<CurrencySymbol, Currency> currencies = {
  CurrencySymbol.FAU: Currency(
    type: CurrencyType.erc20,
    name: 'FaucetToken',
    symbol: CurrencySymbol.FAU,
    value: '0x370DE27fdb7D1Ff1e1BaA7D11c5820a324Cf623C',
    chainId: 11155111,
    network: 'sepolia',
    decimals: 18,
  ),
  CurrencySymbol.USDC: Currency(
    type: CurrencyType.erc20,
    name: 'USD Coin',
    symbol: CurrencySymbol.USDC,
    value: '0x1c7D4B196Cb0C7B01d743Fbc6116a902379C7238',
    chainId: 11155111,
    network: 'sepolia',
    decimals: 6,
  ),
};
