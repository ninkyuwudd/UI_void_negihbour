import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'login_page.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:video_player/video_player.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splash: "images/ngh_logos.png",
        pageTransitionType: PageTransitionType.topToBottom,
        nextScreen: const LoginPage(),
        splashTransition: SplashTransition.fadeTransition,
        );
  }
}
