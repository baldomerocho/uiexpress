library uiexpress.themes;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIEThemes{
  static ThemeData lightTheme({
    Map<TargetPlatform, PageTransitionsBuilder>? builders,
    required Color colorSeed,
    String fontFamily = 'Roboto'
    }) => ThemeData(
    useMaterial3: true,
    fontFamily: fontFamily,
    fontFamilyFallback: ['NotoSans'],
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: colorSeed, brightness: Brightness.light,
    ),
    cardTheme: CardTheme(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.grey.shade300)
      ),
      color: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      hintStyle: TextStyle(color: Colors.grey),
      isDense: true,
      contentPadding: EdgeInsets.all(16),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0.0,
      foregroundColor: colorSeed,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorSeed),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
        )
    ),
    iconTheme: IconThemeData(color: colorSeed),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: colorSeed,
    ),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: builders ?? {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),

  );
  static ThemeData darkTheme({
    Map<TargetPlatform, PageTransitionsBuilder>? builders,
    required Color colorSeed,
    String fontFamily = 'Roboto'
  }) => ThemeData(
    useMaterial3: true,
    fontFamily: fontFamily,
    fontFamilyFallback: ['NotoSans'],
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: colorSeed, brightness: Brightness.dark),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      hintStyle: TextStyle(color: Colors.grey),
      isDense: true,
      contentPadding: EdgeInsets.all(16),
    ),
    cardTheme: CardTheme(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.grey.shade300)
      ),
      color: Colors.grey.shade900,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0.0,
      foregroundColor: colorSeed,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorSeed),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
        )
    ),
    iconTheme: IconThemeData(color: colorSeed),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: builders ?? {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      },
    ),

  );


}