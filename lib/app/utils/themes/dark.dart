import 'package:flutter/material.dart';

ThemeData MyDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.red,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    iconTheme: IconThemeData(color: Colors.redAccent),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey[800],
    elevation: 0,
    selectedItemColor: Colors.redAccent,
    unselectedItemColor: Colors.grey.shade300,
    selectedLabelStyle: TextStyle(color: Colors.redAccent),
    unselectedLabelStyle: TextStyle(color: Colors.grey.shade300),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
);