import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reown_appkit/modal/appkit_modal_impl.dart';
import 'package:reown_appkit/reown_appkit.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationInitialState()) {
    on<_Started>(_onStarted);
    on<_InitializeWalletConnect>(_onInitializeWalletConnect);
    on<_ConnectWallet>(_onConnectWallet);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<AuthenticationState> emit,
  ) {}

  FutureOr<void> _onInitializeWalletConnect(
    _InitializeWalletConnect event,
    Emitter<AuthenticationState> emit,
  ) async {
    final appKit = await ReownAppKit.createInstance(
      projectId: '99d47b5d1a6c90d04c710ce5cc5b6ee0',
      metadata: const PairingMetadata(
        name: 'Time Tracker',
        description: 'Monitize your time using cryptocurrency',
        url: 'http://requeststimetracker.com/',
        icons: ['https://picsum.photos/200'],
        redirect: Redirect(
          native: 'timetracker://',
          universal: 'https://reown.com/timetracker',
          linkMode: true,
        ),
      ),
    );

    // final _appKitModal = ReownAppKitModal(
    //   context: context,
    //   appKit: appKit,
    // );

    // await _appKitModal.init();
  }

  FutureOr<void> _onConnectWallet(
    _ConnectWallet event,
    Emitter<AuthenticationState> emit,
  ) {}
}
