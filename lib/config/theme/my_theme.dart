import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 30, color: Colors.black),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: Colorsmanager.goldColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.black, size: 40),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colorsmanager.goldColor,
        showUnselectedLabels: false,
        elevation: 20,
      ),
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        color: Colorsmanager.goldColor.withOpacity(.8),
        elevation: 18,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
      ));
}
