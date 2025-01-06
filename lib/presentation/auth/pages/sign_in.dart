import 'package:flutter/material.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';

import '../../../common/widgets/appbar/basic_appbar.dart';


class SignInScreen extends StatelessWidget {

  static String routName = 'signin_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: Image.asset( height: 30,'./assets/vectors/spotify_logo.png'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _signinText(),
          _emailField(context),
          _passwordField(context),
          BasicAppButton('Sign In',(){},60)
        ],
      ),
    );
  }
}
Widget _signinText(){
  return Padding(
    padding: const EdgeInsets.only(bottom: 80,top: 20),
    child: const Text(
      'Sign in',
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _emailField(context){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      decoration: InputDecoration(
          hintText: 'Enter Username or Email'
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    ),
  );
}
Widget _passwordField(context){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      decoration: InputDecoration(
          hintText: 'Password'
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    ),
  );
}

