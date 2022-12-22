import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Lottie.asset(
              'assets/lottie/logo_json.json',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: LoadingAnimationWidget.horizontalRotatingDots(
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      nextScreen: const LoginPage(),
      splashIconSize: 600,
      duration: 4000,
      splashTransition: SplashTransition.slideTransition,
      animationDuration: const Duration(milliseconds: 1000),
    );
  }
}
