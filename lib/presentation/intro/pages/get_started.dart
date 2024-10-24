import 'package:flutter/material.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});
   static final routeName = 'get_started';
  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50,bottom: 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  './assets/images/intro_bg.jpg'
                )
              )
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset( height: 55, './assets/vectors/spotify_logo.png'),
                ),
                Spacer(),
                Container(
                    // height: 150,
                    padding: EdgeInsets.only(top: 0,bottom: 30,left: 20,right: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child:Center(
                      child: Column(
                        children: [
                          Text('Enjoy Listening To Music',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                            textAlign: TextAlign.center,),
                          SizedBox(height: 20,),
                          Text('Get ready to immerse yourself in sound doma deeb choma ars naw jasuhu owh8iw awderf awdqh ww8dyw',
                            style: TextStyle(fontSize: 13,color: Colors.white),
                            textAlign: TextAlign.center,),
                          SizedBox(height: 20,),
                          BasicAppButton('Get Started', () {

                            Navigator.pushNamed(context, ChooseModeScreen.routeName);
                          }, 60)
                        ],
                      ),
                    )

                ),
              ],
            ),


        ],
      )
    );
  }
}
