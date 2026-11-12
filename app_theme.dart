import 'package:flutter/material.dart';

/// Custom Campus Hub theme: deep teal + warm amber.
class AppTheme {
  static const Color primary = Color(0xFF0F766E);
  static const Color secondary = Color(0xFFF59E0B);
  static const Color tint = Color(0xFFD9F2EE);

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          brightness: Brightness.light,
          primary: primary,
          secondary: secondary,
        ),
        scaffoldBackgroundColor: const Color(0xFFF4FBFA),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 2,
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      );
}
