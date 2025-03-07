import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                  color: Colors.black,
                  width: 0.5
              )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                  color: Colors.black,
                  width: 0.5
              )
          ),
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(30)
        )
      )
    )
  );
  static final darkTheme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.darkBackground,
      brightness: Brightness.dark,
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: Colors.white,
              width: 0.5
            )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                  color: Colors.white,
                  width: 0.5
              )
          ),
          contentPadding:EdgeInsets.all(25)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),
              shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(30)
              )
          )
      )
  );
}