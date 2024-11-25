import 'package:flutter/material.dart';
import 'package:timetracker/app/tasks/tasks_page.dart';
import 'package:timetracker/l10n/l10n.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  List<Map<String, dynamic>> get thumbnails => [
        {
          'image': 'assets/images/landing/landing_1.png',
          'token': 'assets/images/tokens/btc.png',
          'angle': -0.2,
        },
        {
          'image': 'assets/images/landing/landing_2.png',
          'token': 'assets/images/tokens/bnb.png',
          'angle': 0.3,
        },
        {
          'image': 'assets/images/landing/landing_3.png',
          'token': 'assets/images/tokens/eth.png',
          'angle': 0.1,
        },
      ];

  Widget _thumbnail(Map<String, dynamic> data) => Transform.rotate(
        angle: data['angle']! as double,
        child: SizedBox(
          width: 200,
          height: 300,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    data['image']! as String,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 48,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white54,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(
                      data['token']! as String,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: _thumbnail(thumbnails[1]),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: _thumbnail(thumbnails[0]),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: _thumbnail(thumbnails[2]),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                l10n.landing,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                l10n.slogan,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox.square(dimension: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  fixedSize: const Size.square(94),
                  shape: const OvalBorder(),
                  backgroundColor: Colors.orange,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
