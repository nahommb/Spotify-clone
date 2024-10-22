import 'package:flutter/material.dart';
import 'package:spotify/presentation/intro/pages/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  Future<void> redirect ()async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, GetStartedScreen.routName);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirect();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(height: 60,'./assets/vectors/spotify_logo.png')
      ),
    );
  }

}
