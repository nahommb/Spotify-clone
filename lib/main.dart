import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify/core/configs/theme/app_theme.dart';
import 'package:spotify/presentation/auth/pages/sign_in.dart';
import 'package:spotify/presentation/auth/pages/signin_signup.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';
import 'package:spotify/presentation/choose_mode/bloc/them_cubit.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';
import 'package:spotify/presentation/intro/pages/get_started.dart';
import 'package:spotify/presentation/splash/pages/splash.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>ThemeCubit())
      ],
      child: BlocBuilder<ThemeCubit,ThemeMode>(
        builder: (context,mode) => MaterialApp(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: mode,
          home: Scaffold(
            body: SafeArea(child: SplashScreen())
          ),
          routes: {
            GetStartedScreen.routeName:(context)=>GetStartedScreen(),
            ChooseModeScreen.routeName:(context)=>ChooseModeScreen(),
            Signin_SignupScreen.routeName:(context)=>Signin_SignupScreen(),
            SignupScreen.routName:(context)=>SignupScreen(),
            SignInScreen.routName:(context)=>SignInScreen(),
          },
        ),
      ),
    );
  }
}
