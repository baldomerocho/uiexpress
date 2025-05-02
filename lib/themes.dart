library uiexpress.themes;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIEThemes {
  static ThemeData lightTheme(
          {Map<TargetPlatform, PageTransitionsBuilder>? builders,
          required Color colorSeed,
          Color? buttonForegroundColor,
          Color? iconColor,
          String fontFamily = 'Roboto'}) =>
      ThemeData(
        useMaterial3: true,
        fontFamily: fontFamily,
        fontFamilyFallback: const ['NotoSans'],
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: colorSeed,
          brightness: Brightness.light,
        ),
        cardTheme: CardTheme(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.grey.shade300)),
          color: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          hintStyle: const TextStyle(color: Colors.grey),
          isDense: true,
          contentPadding: const EdgeInsets.all(16),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0.0,
          foregroundColor: colorSeed,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                iconColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  return iconColor ?? Colors.grey.shade800;
                }),
                backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.disabled)) {
                    return Colors
                        .grey.shade400; // Color del botón deshabilitado
                  }
                  return colorSeed;
                }),
                foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.disabled)) {
                    return Colors.grey.shade700;
                  }
                  return buttonForegroundColor ?? Colors.grey.shade800;
                }),
                elevation: WidgetStateProperty.all(0),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))))),
        iconTheme: IconThemeData(color: iconColor ?? Colors.grey.shade800),
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: colorSeed,
        ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: builders ??
              {
                TargetPlatform.android:
                    const FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.iOS: const FadeUpwardsPageTransitionsBuilder(),
              },
        ),
      );
  static ThemeData darkTheme(
          {Map<TargetPlatform, PageTransitionsBuilder>? builders,
          required Color colorSeed,
          Color? buttonForegroundColor,
          Color? iconColor,
          String fontFamily = 'Roboto'}) =>
      ThemeData(
        useMaterial3: true,
        fontFamily: fontFamily,
        fontFamilyFallback: const ['NotoSans'],
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: colorSeed, brightness: Brightness.dark),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          hintStyle: const TextStyle(color: Colors.grey),
          isDense: true,
          contentPadding: const EdgeInsets.all(16),
        ),
        cardTheme: CardTheme(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.grey.shade300)),
          color: Colors.grey.shade900,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0.0,
          foregroundColor: colorSeed,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                iconColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.disabled)) {
                    return Colors.grey.shade800;
                  }
                  return iconColor ?? Colors.grey.shade800;
                }),
                backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.disabled)) {
                    return Colors.grey.shade800;
                  }
                  return colorSeed;
                }),
                foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  if (states.contains(WidgetState.disabled)) {
                    return Colors.grey.shade400;
                  }
                  return buttonForegroundColor ?? Colors.grey.shade800;
                }),
                elevation: WidgetStateProperty.all(0),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))))),
        iconTheme: IconThemeData(color: iconColor ?? Colors.grey.shade800),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: builders ??
              {
                TargetPlatform.android:
                    const FadeUpwardsPageTransitionsBuilder(),
                TargetPlatform.iOS: const FadeUpwardsPageTransitionsBuilder(),
              },
        ),
      );
}
