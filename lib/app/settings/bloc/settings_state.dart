part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    Brightness? brightness,
    Account? account,
  }) = _SettingsState;
}
