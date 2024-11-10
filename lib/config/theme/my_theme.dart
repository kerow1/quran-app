import 'package:flutter/material.dart';

import '../../core/colors_manager.dart';

class MyTheme {
  static bool isDarkEnabled = false;
  static ThemeData lightTheme = ThemeData(
      canvasColor: ColorsManager.lightPrimary,
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.lightPrimary,
          primary: ColorsManager.lightPrimary,
          onPrimary: Colors.white,
          secondary: Colors.black),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 30, color: Colors.black),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: ColorsManager.lightPrimary,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.black, size: 40),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
        type: BottomNavigationBarType.shifting,
        backgroundColor: ColorsManager.lightPrimary,
        showUnselectedLabels: false,
        elevation: 20,
      ),
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        color: ColorsManager.lightPrimary.withOpacity(.8),
        elevation: 18,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      iconTheme: const IconThemeData(color: ColorsManager.white),
      indicatorColor: ColorsManager.white,
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 12,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        backgroundColor: ColorsManager.lightPrimary.withOpacity(0.7),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          color: Color(0xFF242424),
        ),
        titleMedium: TextStyle(
          fontSize: 19,
          color: Color(0xFF242424),
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white),
          labelMedium: TextStyle(
            color: ColorsManager.lightPrimary,
            fontSize: 16,
              fontWeight: FontWeight.w500),
          labelSmall: TextStyle(
            color: ColorsManager.lightPrimary,
            fontSize: 14,
              fontWeight: FontWeight.w500),
          displayMedium: TextStyle(
            fontWeight: FontWeight.w400, color: Colors.white, fontSize: 21),
        bodySmall: TextStyle(
            fontWeight: FontWeight.w400, color: Colors.white, fontSize: 21),
      ));
  static ThemeData darkTheme = ThemeData(
      canvasColor: ColorsManager.darkPrimary,
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.darkPrimary,
          primary: ColorsManager.darkPrimary,
          onPrimary: ColorsManager.darkPrimary,
          secondary: Colors.white),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 33),
        unselectedIconTheme: IconThemeData(size: 33),
        type: BottomNavigationBarType.shifting,
        backgroundColor: ColorsManager.darkPrimary,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 20,
        selectedItemColor: ColorsManager.yellow,
        unselectedItemColor: ColorsManager.white,
      ),
      dividerColor: ColorsManager.yellow,
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        color: ColorsManager.darkPrimary,
        elevation: 18,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      iconTheme: const IconThemeData(color: ColorsManager.yellow),
      indicatorColor: ColorsManager.yellow,
      bottomSheetTheme: const BottomSheetThemeData(
        elevation: 12,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        backgroundColor: ColorsManager.darkPrimary,
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          color: ColorsManager.white,
        ),
        titleMedium: TextStyle(
          fontSize: 19,
          color: ColorsManager.white,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: ColorsManager.yellow),
        labelMedium: TextStyle(
            color: ColorsManager.yellow,
            fontSize: 16,
            fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
            color: ColorsManager.yellow,
            fontSize: 14,
            fontWeight: FontWeight.w500),
        displayMedium: TextStyle(
            fontWeight: FontWeight.w400,
            color: ColorsManager.yellow,
            fontSize: 21),
        bodySmall: TextStyle(
            fontWeight: FontWeight.w400, color: Colors.black, fontSize: 21),
      ));
}
