import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:shopping_app/app/app.locator.dart';
import 'package:shopping_app/app/app.router.dart';
import 'package:shopping_app/views/home_view.dart';
import 'package:shopping_app/views/product_view.dart';

void main() {
  setupLocator(); // Initialize the locator
  runApp(const MyApp()); // Run the MyApp widget
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system; // Default to system theme
  int _selectedIndex = 0; // For selected tab
  final TextEditingController _searchController = TextEditingController();

  final List<Widget> _pages = [
    const HomeView(),
    const Center(child: Text('Explore')),
    const ProductView(),
    const Center(child: Text('Wishlist')),
    const Center(child: Text('Profile')),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stacked Shopping App',
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      home: Scaffold(

      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            title: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt, color: Colors.white),
                ),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: "Search here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _themeMode == ThemeMode.dark ? Icons.brightness_7 : Icons.brightness_2,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
                    });
                  },
                ),
              ],
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.transparent], // Gradient for AppBar
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        body: Container(
          // color: Theme.of(context).scaffoldBackgroundColor,
          child: _pages[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index; // Update selected index
            });
          },
          selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Products'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

// Define your themes with BottomNavigationBarThemeData
final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.black),
    titleMedium: TextStyle(color: Colors.black),
    titleSmall: TextStyle(color: Colors.grey),
  ),
  iconTheme: const IconThemeData(
    color: Colors.black54,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.black54,
    showUnselectedLabels: true,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
      color: Colors.black54,
    ),
    type: BottomNavigationBarType.fixed,
  ),
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black, // Changed to Colors.black for solid black
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
    titleSmall: TextStyle(color: Colors.grey),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
    showUnselectedLabels: true,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
      color: Colors.grey,
    ),
    type: BottomNavigationBarType.fixed,
  ),
);
