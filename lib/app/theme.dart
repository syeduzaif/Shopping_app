import 'package:flutter/material.dart';

// light  themes here
final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,

  brightness: Brightness.light,
  primaryColor: Colors.blue,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white, // Text color in AppBar
    elevation: 0,
  ),
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
    iconTheme:
    IconThemeData(
        color: Colors.black54
    )
);

//dark themes here
final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black54,
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  tabBarTheme: const TabBarTheme(
    indicatorColor: Colors.white,
    labelColor: Colors.white,
    unselectedLabelColor: Colors.white,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.white), // Default text color
    titleMedium: TextStyle(color: Colors.white), // Default text color
    titleSmall: TextStyle(color: Colors.grey),

  ),
  iconTheme:
    IconThemeData(
      color: Colors.white
    )

);