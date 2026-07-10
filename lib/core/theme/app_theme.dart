import 'package:flutter/material.dart';

class AppTheme {
  // Brand Colors
  static const Color background = Color(0xFF090909);
  static const Color surface = Color(0xFF161616);

  static const Color gold = Color(0xFFD8B15A);
  static const Color goldLight = Color(0xFFF5D98B);

  static const Color purple = Color(0xFF8A2BE2);
  static const Color purpleLight = Color(0xFFB76CFF);

  static const Color white = Colors.white;
  static const Color grey = Color(0xFFBDBDBD);

  static const LinearGradient brandGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      gold,
      goldLight,
      purple,
    ],
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primaryColor: gold,

    colorScheme: const ColorScheme.dark(
      primary: gold,
      secondary: purple,
      surface: surface,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      elevation: 0,
      centerTitle: true,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: surface,

      hintStyle: const TextStyle(
        color: Colors.white54,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
          color: Colors.white12,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
          color: gold,
          width: 2,
        ),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: gold,
        foregroundColor: Colors.black,
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    ),
  );
}