import 'package:flutter/material.dart';
import '../../../common/widgets/appbar/basic_appbar.dart';

class SignupScreen extends StatelessWidget {


  static final routName = 'signup_screen';

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
            _fullNameField(),
            _fullNameField(),
            _fullNameField(),
          ],
        ),
      ),
    );
  }

  Widget _registerText(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 100,top: 20),
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

  Widget _fullNameField(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
       
       decoration: InputDecoration(
         hintText: "Full Name",
         hintStyle: TextStyle(

         ),
         border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
         ),
           contentPadding:EdgeInsets.all(25)
       ),
      ),
    );
  }
}
