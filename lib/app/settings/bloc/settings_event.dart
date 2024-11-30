part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;
  const factory SettingsEvent.brightnessChanged(AppBrightness brightness) = _BrightnessChanged;
  const factory SettingsEvent.login(String walletAddress) = _LoggedIn;
  const factory SettingsEvent.logout() = _Loggedout;
}