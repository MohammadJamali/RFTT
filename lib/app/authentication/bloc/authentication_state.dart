part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = AuthenticationInitialState;
  const factory AuthenticationState.walletConnectInitialized(
      String walletSessionUri,) = WalletConnectInitialized;
  const factory AuthenticationState.walletConnected(String publicKey) =
      WalletConnected;
}
