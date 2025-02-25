import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/presentation/auth/pages/sign_in.dart';
import '../../../common/widgets/appbar/basic_appbar.dart';


class SignupScreen extends StatelessWidget {


  static final routName = 'signup_screen';

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
      title: Image.asset( height: 30,'./assets/vectors/spotify_logo.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            _fullNameField(context),
            _emailField(context),
            _passwordField(context),
            BasicAppButton('Create Account', () {
              auth.createUserWithEmailAndPassword(email: 'nahomjr@gmail.com', password: '123456');
            }, 60),
            Spacer(),
            _signInText(context),
            // _fullNameField(),
            // _fullNameField(),
          ],
        ),
      ),
    );
  }

  Widget _registerText(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 80,top: 20),
      child: const Text(
        'Register',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _fullNameField(context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Full Name'
        ).applyDefaults(Theme.of(context).inputDecorationTheme),
      ),
    );
  }
  Widget _emailField(context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Enter Email'
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
  Widget _signInText(context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Do You Have Account ?'),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, SignInScreen.routName);
          }, child: Text('Sign In'))
        ],
      )
    );
  }
}
