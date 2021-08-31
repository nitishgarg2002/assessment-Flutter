import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:news/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/news.png',
      splashIconSize: 300,
      backgroundColor: Colors.black,
      nextScreen: Home(),
      splashTransition: SplashTransition.scaleTransition,
    );
  }
}
