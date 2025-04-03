import 'package:flutter/material.dart';

// Example Theme Data - Adjust Colors and Fonts as needed
const Color primaryColor = Colors.blue;
// Crystal Ice Blue
const Color accentColor = Colors.lightBlueAccent;
const Color backgroundColor = Colors.white;
const Color textColor = Colors.black87;
const Color buttonTextColor = Colors.white;
const Color errorColor = Colors.redAccent;

final ThemeData crystalIceTheme = ThemeData(
  primarySwatch: Colors.blue,
// Generates shades from primaryColor
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
// Define specific text styles if needed
    bodyMedium: TextStyle(color: textColor, fontSize: 14),
    headlineSmall:
        TextStyle(color: textColor, fontSize: 24, fontWeight: FontWeight.bold),
    titleMedium:
        TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
    labelLarge: TextStyle(
        color: buttonTextColor, fontSize: 16, fontWeight: FontWeight.bold),
//
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
      // Text color, Background
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      iconColor: buttonTextColor,
      iconSize: 24
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
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
// Add other theme properties as needed (cardTheme, iconTheme, etc.)
  cardTheme: CardTheme(
    color: backgroundColor,
    shadowColor: Colors.black26,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      // side: BorderSide(color: primaryColor.withOpacity(0.2)),
    ),
  ),
  iconTheme: const IconThemeData(
    color: buttonTextColor, // Default icon color
    size: 24, // Default size
  ),
);
// Example Localized Strings Setup (Guide for interns)
// 1. Add dependencies: flutter_localizations, intl
// 2. Create l10n.yaml file
// 3. Create arb files (e.g., lib/l10n/app_en.arb, lib/l10n/app_hi.arb)
// 4. Use AppLocalizations.of(context)!.yourStringKey in widgets
