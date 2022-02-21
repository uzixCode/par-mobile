import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:par_mobile/constants/all_color.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: allColor.primary,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
    colorScheme: ColorScheme.light(
      primary: allColor.primary,
      secondary: allColor.secondary,
      error: allColor.light_red,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
        borderSide: BorderSide(),
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 15.0,
      ),
    ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: allColor.secondary,
      unselectedItemColor: allColor.grey,
      selectedIconTheme: IconThemeData(color: allColor.secondary),
      showUnselectedLabels: true,
    ),
  );
}

AppBarTheme appBarTheme = AppBarTheme(
  centerTitle: false,
  elevation: 1,
  backgroundColor: Colors.white,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: allColor.primary,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ),
  titleTextStyle: const TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  iconTheme: IconThemeData(
    color: allColor.secondary,
  ),
  actionsIconTheme: const IconThemeData(
    color: Colors.grey,
  ),
);
