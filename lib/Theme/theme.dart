import 'package:flutter/material.dart';

const Color primaryColor = Colors.blue;
const Color accentColor = Colors.lightBlueAccent;
const Color backgroundColor = Colors.white;
const Color textColor = Colors.black87;
const Color buttonTextColor = Colors.white;
const Color dullColor = Colors.grey;
const Color errorColor = Colors.redAccent;

final ThemeData crystalIceTheme = ThemeData(
  primarySwatch: Colors.blue,
  colorScheme: ColorScheme.light(
    primary: primaryColor,
    secondary: accentColor,
    surface: backgroundColor,
    background: backgroundColor,
    error: errorColor,
    onPrimary: buttonTextColor,
    onSecondary: Colors.black,
    onSurface: textColor,
    onBackground: textColor,
    onError: Colors.white,
  ),
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    color: primaryColor,
    elevation: 4,
    iconTheme: IconThemeData(color: buttonTextColor),
    titleTextStyle: TextStyle(
        color: buttonTextColor, fontSize: 20, fontWeight: FontWeight.w500),
  ),
  textTheme: const TextTheme(
    headlineMedium:
        TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: textColor),
    titleLarge:
        TextStyle(color: textColor, fontSize: 30, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(color: textColor, fontSize: 14),
    bodyLarge:
        TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold),

    headlineSmall:
        TextStyle(color: textColor, fontSize: 24, fontWeight: FontWeight.bold),
    titleMedium:
        TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
    labelLarge:
        TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        foregroundColor: buttonTextColor,
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        iconColor: buttonTextColor,
        iconSize: 24),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(color: dullColor, fontWeight: FontWeight.w500),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: primaryColor.withOpacity(0.5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: primaryColor, width: 2),
    ),
    labelStyle: const TextStyle(color: textColor),
  ),
  cardTheme: CardTheme(
    color: backgroundColor,
    shadowColor: Colors.black26,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(color: dullColor.withOpacity(0.2)),
    ),
  ),
  iconTheme: const IconThemeData(
    color: buttonTextColor,
    size: 24, 
  ),
);