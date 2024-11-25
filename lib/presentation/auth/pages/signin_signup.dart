import 'package:flutter/material.dart';
import 'package:spotify/common/helper/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/basic_appbar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

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
      body: Container(
        // color: Colors.lightGreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BasicAppBar(),
            Expanded(
              child: Container(
                // color: Colors.lightBlue,
                padding: EdgeInsets.only(left: 50,right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(height: 45,'./assets/vectors/spotify_logo.png'),
                    SizedBox(height: 40,),
                    Text('Enjoy Listening To Music',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: context.isDarkMode?Colors.white:Colors.black),),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 20,right: 20,bottom: 10),
                      child: Text('Ana mAria charl puth david guta nhuio mjaew huiojd awer betam nw ena nege adis music yinoral',
                        style: TextStyle(fontSize: 13,color: Colors.grey),textAlign: TextAlign.center,),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: BasicAppButton('Register', () {
                              Navigator.pushNamed(context, SignupScreen.routName);
                            }, 50)
                        ),
                        Expanded(
                            flex: 1,
                            child: TextButton(onPressed: (){}, child: Text('Sign in')))
                      ],
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }


}
