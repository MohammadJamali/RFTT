import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetracker/app/settings/enums/brightness.dart';
import 'package:timetracker_api/timetracker_api.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const _Initial()) {
    on<_BrightnessChanged>(_onBrightnessChanged);
    on<_LoggedIn>(_onLoggedIn);
    on<_Loggedout>(_onLoggedout);
  }

  FutureOr<void> _onBrightnessChanged(
    _BrightnessChanged event,
    Emitter<SettingsState> emit,
  ) {
    final brightness = event.brightness == AppBrightness.systemDefault
        ? MediaQueryData.fromView(PlatformDispatcher.instance.implicitView!)
            .platformBrightness
        : Brightness.values.byName(event.brightness.name);

    emit(SettingsState.brightness(brightness));
  }

  FutureOr<void> _onLoggedIn(
    _LoggedIn event,
    Emitter<SettingsState> emit,
  ) {


    emit(SettingsState.login(event.actor));
  }

  FutureOr<void> _onLoggedout(
    _Loggedout event,
    Emitter<SettingsState> emit,
  ) {

    emit(const SettingsState.logout());
  }
}
