import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:timetracker/app/authentication/authentication.dart';
import 'package:timetracker/widgets/outline_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  static String route = '/authentication';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: const AuthenticationView(),
    );
  }
}

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({super.key});

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WaveWidget(
            config: CustomConfig(
              colors: [
                Colors.white70,
                Colors.white54,
                Colors.white30,
                Colors.white,
              ],
              durations: [32000, 21000, 18000, 5000],
              heightPercentages: [0.20, 0.21, 0.22, 0.23],
            ),
            backgroundColor: const Color(0xFFf35026),
            size: Size.infinite,
            waveAmplitude: 0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Flexible(
                  // ignore: avoid_redundant_argument_values
                  flex: 100 ~/ 60,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Opacity(
                      opacity: 0.7,
                      child: Image.asset(
                        'assets/images/icon_white.png',
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 100 ~/ 40,
                  child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
                    listener: (context, state) {
                      if (state is WalletConnected) {
                        Navigator.of(context).pop();
                        return;
                      }
                    },
                    builder: buildViews,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> copyWalletSessionUriToClipboard(
    BuildContext context,
    String walletSessionUri,
  ) async {
    await Clipboard.setData(
      ClipboardData(text: walletSessionUri),
    );
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          elevation: 6,
          width: 400,
          dismissDirection: DismissDirection.down,
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 10),
          content: Text('Copied to clipboard!'),
        ),
      );
    }
  }

  Widget buildViews(
    BuildContext context,
    AuthenticationState state,
  ) {
    if (state is AuthenticationInitialState) return const _CircularProgress();

    final theme = Theme.of(context);
    if (state is WalletConnectInitialized) {
      return LayoutBuilder(
        builder: (_, BoxConstraints boxConstraints) {
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 400,
                minHeight: boxConstraints.maxHeight,
              ),
              padding: const EdgeInsets.only(top: 16, bottom: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Tooltip(
                        message: 'Copy',
                        child: GestureDetector(
                          child: const Icon(
                            FontAwesomeIcons.copy,
                            color: Color(0xFF00e599),
                          ),
                          onTap: () => copyWalletSessionUriToClipboard(
                            context,
                            state.walletSessionUri,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(4)),
                      Text(
                        'Scan with MetaMask to login',
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 24),
                    child: Center(
                      child: QrImageView(
                        data: state.walletSessionUri,
                        size: 236,
                        eyeStyle: QrEyeStyle(
                          eyeShape: QrEyeShape.square,
                          color: theme.brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: OutlineIconButton(
                          icon: const Icon(FontAwesomeIcons.wallet),
                          label: 'Download Neon',
                          onPressed: () =>
                              launchUrl(Uri.parse('https://metamask.io/')),
                        ),
                      ),
                      Flexible(
                        child: OutlineIconButton(
                          icon: const Icon(
                            FontAwesomeIcons.plug,
                            color: Color(0xFF00e599),
                          ),
                          label: 'Connect',
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                "https://neon.coz.io/connect?uri=${state.walletSessionUri!}",
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    return const Placeholder();
  }
}

class _CircularProgress extends StatelessWidget {
  const _CircularProgress();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: Text('Initializing Wallet Connect'),
          ),
        ],
      ),
    );
  }
}
