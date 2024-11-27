part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.brightness(Brightness brightness) = _Brightness;
  const factory SettingsState.login(TransactionActor actor) = _Login;
  const factory SettingsState.logout() = _Logout;
}
