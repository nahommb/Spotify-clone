import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/core/configs/theme/app_theme.dart';
import 'package:spotify/presentation/choose_mode/bloc/them_cubit.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  static final routName = 'choose_mode';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('./assets/images/choose_mode_bg.jpg')
              )
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
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
                  padding: EdgeInsets.only(top: 0,bottom: 80,left: 20,right: 20),
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
                        Text('Choose Mode',
                          style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            avatorButton('Dark Mode',Icons.nightlight_outlined,(){
                              print('test');
                              context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                            },),
                            avatorButton('Light Mode',Icons.wb_sunny_outlined,(){
                              print('test');
                              context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                            }),
                          ],
                        ),

                        SizedBox(height: 20,),

                        BasicAppButton('Continue', () {
                          print('button');
                          Navigator.pushNamed(context, ChooseModeScreen.routName);
                        }, 60)
                      ],
                    ),
                  )

              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget avatorButton(String title,IconData iconData,Function onTap) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black.withOpacity(0.5),
          child: IconButton(
            onPressed: (){
              onTap();
            },
            icon: Icon(iconData)//Icon(Icons.nightlight_outlined),

          ),
        ),
        Text(title,style: TextStyle(color: Colors.white),)
      ],
    );
  }
}
