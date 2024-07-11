import 'package:flutter/material.dart';

class GlobalTheme
{
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      surface: Colors.purple,
      onInverseSurface: Colors.green,
      onTertiary: Colors.blue,
      onTertiaryContainer: Colors.orange,
    ),
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.white
   )
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      surface: Colors.orange,
      onInverseSurface: Colors.blue,
      onTertiary: Colors.pink,
      onTertiaryContainer: Colors.amberAccent,
    ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.black54
      )
  );
}