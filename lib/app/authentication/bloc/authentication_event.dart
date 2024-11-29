part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.started() = _Started;
  const factory AuthenticationEvent.initializeWalletConnect() =
      _InitializeWalletConnect;
  const factory AuthenticationEvent.connectWallet(String publicKey) =
      _ConnectWallet;
}
