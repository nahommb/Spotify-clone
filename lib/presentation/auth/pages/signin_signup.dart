import 'package:flutter/material.dart';
import 'package:spotify/common/helper/is_dark_mode.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';

class Signin_SignupScreen extends StatefulWidget {
  const Signin_SignupScreen({super.key});

  static final routeName = 'signin_signup';

  @override
  State<Signin_SignupScreen> createState() => _Signin_SignupScreenState();
}

class _Signin_SignupScreenState extends State<Signin_SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(height: 40,'./assets/vectors/spotify_logo.png'),
              SizedBox(height: 40,),
              Column(
                children: [
                  Text('Enjoy Listening To Music',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: context.isDarkMode?Colors.white:Colors.black),),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 20,right: 20,bottom: 10),
                    child: Text('Ana mAria charl puth david guta nhuio mjaew huiojd awer betam nw ena nege adis music yinoral',
                      style: TextStyle(fontSize: 13,color: Colors.grey),textAlign: TextAlign.center,),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                      child: BasicAppButton('Register', () { }, 50)
                  ),
                  Expanded(
                      flex: 1,
                      child: TextButton(onPressed: (){}, child: Text('Sign up')))
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }


}
