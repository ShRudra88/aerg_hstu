import 'package:flutter/material.dart';

final ThemeData lightThemeData = ThemeData(
  // Primary and secondary colors
  primaryColor: Colors.blueGrey,
  primaryColorDark: Colors.black,
  primaryColorLight: Colors.white,
  accentColor: Colors.blueAccent,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.grey[50],

  // AppBar theme
  appBarTheme: AppBarTheme(
    color: Colors.blueGrey[900],
    elevation: 4,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),

  // Button theme
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    textTheme: ButtonTextTheme.primary,
  ),

  // ElevatedButton theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blueAccent,
      onPrimary: Colors.white,
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    ),
  ),

  // Text theme
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey[900],
    ),
    headline2: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey[900],
    ),
    headline3: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.blueGrey[800],
    ),
    headline4: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.blueGrey[700],
    ),
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.blueGrey[600],
    ),
    headline6: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.blueGrey[500],
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      color: Colors.blueGrey[600],
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      color: Colors.blueGrey[500],
    ),
    subtitle1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.blueGrey[500],
    ),
    subtitle2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.blueGrey[400],
    ),
    button: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  ),

  // Icon theme
  iconTheme: IconThemeData(
    color: Colors.blueGrey[900],
  ),

  // Input decoration theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[200],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey[300]!),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.blueAccent),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.redAccent),
    ),
    hintStyle: TextStyle(
      color: Colors.grey[500],
    ),
    labelStyle: TextStyle(
      color: Colors.blueGrey[700],
    ),
  ),

  // Card theme
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),

  // Divider theme
  dividerTheme: DividerThemeData(
    color: Colors.grey[300],
    thickness: 1,
  ),

  // Chip theme
  chipTheme: ChipThemeData(
    backgroundColor: Colors.grey[300]!,
    disabledColor: Colors.grey[100]!,
    selectedColor: Colors.blueAccent,
    secondarySelectedColor: Colors.blueAccent,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    labelStyle: TextStyle(
      color: Colors.blueGrey[900],
    ),
    secondaryLabelStyle: TextStyle(
      color: Colors.white,
    ),
    brightness: Brightness.light,
  ),
);

final ThemeData darkThemeData = ThemeData(
  // Primary and secondary colors
  primaryColor: Colors.blueGrey[800],
  primaryColorDark: Colors.black,
  primaryColorLight: Colors.blueGrey,
  accentColor: Colors.blueAccent,
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.grey[850],

  // AppBar theme
  appBarTheme: AppBarTheme(
    color: Colors.blueGrey[900],
    elevation: 4,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),

  // Button theme
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    textTheme: ButtonTextTheme.primary,
  ),

  // ElevatedButton theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blueAccent,
      onPrimary: Colors.white,
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    ),
  ),

  // Text theme
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline3: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline4: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline5: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      color: Colors.white,
    ),
    subtitle1: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    subtitle2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    button: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  ),

  // Icon theme
  iconTheme: IconThemeData(
    color: Colors.white,
  ),

  // Input decoration theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[800],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey[700]!),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.blueAccent),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.redAccent),
    ),
    hintStyle: TextStyle(
      color: Colors.grey[500],
    ),
    labelStyle: TextStyle(
      color: Colors.blueGrey[100],
    ),
  ),

  // Card theme
  cardTheme: CardTheme(
    color: Colors.grey[850],
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ),

  // Divider theme
  dividerTheme: DividerThemeData(
    color: Colors.grey[700],
    thickness: 1,
  ),

  // Chip theme
  chipTheme: ChipThemeData(
    backgroundColor: Colors.grey[700]!,
    disabledColor: Colors.grey[600]!,
    selectedColor: Colors.blueAccent,
    secondarySelectedColor: Colors.blueAccent,
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    labelStyle: TextStyle(
      color: Colors.white,
    ),
    secondaryLabelStyle: TextStyle(
      color: Colors.blueGrey[900],
    ),
    brightness: Brightness.dark,
  ),
);
