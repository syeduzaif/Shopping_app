import 'package:flutter/material.dart';

// Light theme
final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFFBFBFB),
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white, // Text color in AppBar
    elevation: 0,
  ),
  cardColor: const Color(0xFFFFFFFF),
  tabBarTheme: const TabBarTheme(
    indicatorColor: Colors.white,
    labelColor: Colors.white,
    unselectedLabelColor: Colors.black,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.black), // Default text color
    titleMedium: TextStyle(color: Colors.black), // Default text color
    titleSmall: TextStyle(color: Colors.grey),
  ),
  iconTheme: const IconThemeData(color: Colors.black54),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
);

// Dark theme
final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black, // Changed to solid black for better readability
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  cardColor: const Color(0xFFFFFFFF),

  tabBarTheme: const TabBarTheme(
    indicatorColor: Colors.white,
    labelColor: Colors.white,
    unselectedLabelColor: Colors.grey, // Changed for better contrast
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.white), // Default text color
    titleMedium: TextStyle(color: Colors.white), // Default text color
    titleSmall: TextStyle(color: Colors.grey),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black, // Changed to solid black
  ),
);
