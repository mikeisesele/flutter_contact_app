import 'package:flutter/material.dart';
class MyAppThemes {
  static ThemeData appThemeLight() {
    return ThemeData(
      useMaterial3: true,
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// Define the default brightness and colors for the overall app.
      brightness: Brightness.light,

//Defines theme for AppBar
      appBarTheme: const AppBarTheme(
        color: Colors.white,

//Theme for icons used in AppBar
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),

//Theme for icons used in the app
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        //White background
        backgroundColor: Colors.white,

        //Black plus (+) sign for FAB
        foregroundColor: Colors.black,
      ),
    );
  }

  static ThemeData appThemeDark() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.dark,

      //Theme for app bar
      appBarTheme: const AppBarTheme(
        //AppBar's background color is dark this time
        color: Colors.black,

        //Light color for the app bar's icons
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),

      //App's icons are colored in orange color
      iconTheme: const IconThemeData(
        color: Colors.orange,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //dark background for FAB
      backgroundColor: Colors.black,

      //White plus (+) sign for FAB
      foregroundColor: Colors.white,
      )
    );
  }
}

enum APP_THEME {
  DARK,
  LIGHT
}