import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_theme.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';
import 'package:spotify/presentation/intro/pages/get_started.dart';
import 'package:spotify/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        body: SafeArea(child: SplashScreen())
      ),
      routes: {
        GetStartedScreen.routName:(context)=>GetStartedScreen(),
        ChooseModeScreen.routName:(context)=>ChooseModeScreen(),
      },
    );
  }
}
