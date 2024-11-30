import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reown_appkit/reown_appkit.dart';
import 'package:timetracker/app/settings/enums/brightness.dart';
import 'package:timetracker_api/timetracker_api.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc()
      : _appKit = Completer<ReownAppKit>(),
        super(const SettingsState()) {
    ReownAppKitModalNetworks.removeSupportedNetworks('solana');
    _appKit.complete(
      ReownAppKit.createInstance(
        projectId: '99d47b5d1a6c90d04c710ce5cc5b6ee0',
        metadata: const PairingMetadata(
          name: 'Time Tracker',
          description: 'Monitize your time using cryptocurrency',
          url: 'https://timetracker.iamjamali.ir',
          icons: [
            'https://imagedelivery.net/_aTEfDRm7z3tKgu9JhfeKA/3e785947-b9d5-4cc4-41b9-b4c33da45000/lg'
          ],
        ),
      ),
    );
    _appKit.future.then((value) {
      value.onSessionUpdate.subscribe(_onSessionUpdate);
      value.onSessionConnect.subscribe(_onSessionConnect);
      value.onSessionEvent.subscribe(_onSessionEvent);
      value.onSessionExpire.subscribe(_onSessionExpire);
      value.onSessionPing.subscribe(_onSessionPing);
    });

    on<_BrightnessChanged>(_onBrightnessChanged);
    on<_LoggedIn>(_onLoggedIn);
    on<_Loggedout>(_onLoggedout);
  }

  static const String namespace = 'eip155';

  Completer<ReownAppKit> _appKit;
  ReownAppKitModal? _appKitModal;

  @override
  Future<void> close() async {
    await _appKit.future.then((value) {
      value.onSessionConnect.unsubscribe(_onSessionConnect);
      value.onSessionEvent.unsubscribe(_onSessionEvent);
      value.onSessionExpire.unsubscribe(_onSessionExpire);
      value.onSessionPing.unsubscribe(_onSessionPing);
    });

    await super.close();
  }

  Future<ReownAppKitModal?> model(BuildContext context) async {
    final appKit = await _appKit.future;

    if (!context.mounted) return null;

    _appKitModal = ReownAppKitModal(context: context, appKit: appKit);

    await _appKitModal?.init();

    if ((_appKitModal?.isConnected ?? false) && state.actor == null) {
      _onSessionConnect(null);
    }

    return _appKitModal;
  }

  String? walletAddress() {
    if (_appKitModal?.isConnected != true) return null;
    return _appKitModal?.session?.getAddress(namespace);
  }

  void _onSessionConnect(SessionConnect? args) {
    print('_onSessionConnect');

    final address = walletAddress();
    if (address == null) return;

    add(SettingsEvent.login(address));
  }

  void _onSessionEvent(SessionEvent? args) {
    print('_onSessionEvent');
  }

  void _onSessionExpire(SessionExpire? args) {
    print('_onSessionExpire');
  }

  void _onSessionPing(SessionPing? args) {
    print('_onSessionPing');
  }

  void _onSessionUpdate(SessionUpdate? args) {
    print('_onSessionUpdate');
  }

  FutureOr<void> _onBrightnessChanged(
    _BrightnessChanged event,
    Emitter<SettingsState> emit,
  ) {
    final brightness = event.brightness == AppBrightness.systemDefault
        ? MediaQueryData.fromView(PlatformDispatcher.instance.implicitView!)
            .platformBrightness
        : Brightness.values.byName(event.brightness.name);

    emit(state.copyWith(brightness: brightness));
  }

  FutureOr<void> _onLoggedIn(
    _LoggedIn event,
    Emitter<SettingsState> emit,
  ) {
    emit(
      state.copyWith(
        actor: TransactionActor(
          type: 'ethereumAddress',
          value: event.walletAddress,
        ),
      ),
    );
  }

  FutureOr<void> _onLoggedout(
    _Loggedout event,
    Emitter<SettingsState> emit,
  ) {
    emit(state.copyWith(actor: null));
  }
}
