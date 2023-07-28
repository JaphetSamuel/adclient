import 'package:flutter/material.dart';
import 'package:get/get.dart';

ThemeData Mytheme = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 50),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 1,
    centerTitle: true,
    titleTextStyle: TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    iconTheme: IconThemeData(color: Colors.redAccent),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.white,
      side: BorderSide(color: Colors.grey.shade300),
      minimumSize: Size(Get.height, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.redAccent,
      minimumSize: Size(0, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    labelStyle: TextStyle(color: Colors.grey.shade300),
    hintStyle: TextStyle(color: Colors.grey.shade300),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    selectedItemColor: Colors.redAccent,
    unselectedItemColor: Colors.grey.shade300,
    selectedLabelStyle: TextStyle(color: Colors.redAccent),
    unselectedLabelStyle: TextStyle(color: Colors.grey.shade300),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
          accentColor: Colors.redAccent,
          backgroundColor: const Color(0xFFFFFBF8)
  )
      .copyWith(background: const Color(0xFFFFFBF8)),
);
