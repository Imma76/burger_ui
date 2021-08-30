import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Text(
        "Pizzaville",
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
        ),
      ),
      backgroundColor: Color(0xffe51320),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      nextScreen: LoginScreen(),
    );
  }
}
