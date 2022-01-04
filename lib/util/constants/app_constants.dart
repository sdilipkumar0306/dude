import 'package:flutter/material.dart';

const String appName = "Dude";
const String appName_2 = "DUDE";
const String appName_1 = "dude";

Color myColor = Colors.teal.shade900;

final Color appPrimaryColor = Colors.teal.shade900;
final Color appPrimaryDarkColor = Colors.teal.shade900;
final Color appPrimaryLightColor = Colors.teal.shade50;
const MaterialColor appSwatchColor = Colors.teal;

// Secondary Colors
final Color appSecondaryColor = Colors.lightBlue.shade900;
final Color appSecondaryDarkColor = Colors.blueGrey.shade900;

// BackGround Colors
const Color appLightBgColor = Colors.white;
const Color appDarkBgColor = Colors.black;

// Basic Colors
const Color errorColor = Colors.red;
const Color whiteColor = Colors.white;
const Color successColor = Colors.green;

ThemeData appLightThemeData = ThemeData(
    primaryColor: appPrimaryColor,
    primaryColorLight: appPrimaryLightColor,
    primaryColorDark: appPrimaryDarkColor,
    primarySwatch: appSwatchColor,
    backgroundColor: appLightBgColor,
    errorColor: errorColor,
    drawerTheme: DrawerThemeData(backgroundColor: Colors.teal.shade200)
    // colorScheme: ColorScheme(
    //     primary: appPrimaryColor,
    //     primaryVariant: appPrimaryDarkColor,
    //     secondary: appSecondaryColor,
    //     secondaryVariant: appSecondaryDarkColor,
    //     surface: appPrimaryLightColor,
    //     background: appLightBgColor,
    //     error: errorColor,
    //     onPrimary: appPrimaryColor,
    //     onSecondary: appSecondaryColor,
    //     onSurface: appPrimaryLightColor,
    //     onBackground: appLightBgColor,
    //     onError: errorColor,
    //     brightness: Brightness.light),
    );
ThemeData appDarkThemeData = ThemeData(
  primaryColor: appPrimaryColor,
  primaryColorLight: appPrimaryLightColor,
  primaryColorDark: appPrimaryDarkColor,
  primarySwatch: appSwatchColor,
  backgroundColor: appDarkBgColor,
  errorColor: errorColor,
  // colorScheme: ColorScheme(
  //     primary: appPrimaryColor,
  //     primaryVariant: appPrimaryDarkColor,
  //     secondary: appSecondaryColor,
  //     secondaryVariant: appSecondaryDarkColor,
  //     surface: appPrimaryLightColor,
  //     background: appDarkBgColor,
  //     error: errorColor,
  //     onPrimary: appPrimaryColor,
  //     onSecondary: appSecondaryColor,
  //     onSurface: appPrimaryLightColor,
  //     onBackground: appLightBgColor,
  //     onError: errorColor,
  //     brightness: Brightness.light),
);
