import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:shopping_app/app/app.locator.dart';
import 'package:shopping_app/app/app.router.dart';
import 'package:shopping_app/views/home_view.dart';
import 'package:shopping_app/views/product_view.dart';
import 'package:shopping_app/app/theme.dart';

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
  ThemeMode _themeMode = ThemeMode.system;
  int _selectedIndex = 0; // for selected tab
  final TextEditingController _searchController = TextEditingController();

  final List<Widget> _pages = [
    HomeView(), // Home page
    ProductView(), // Product page
    Center(child: Text('Profile')), // Profile page placeholder
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
      // Set the theme mode
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
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
            backgroundColor: Colors.transparent, // Make AppBar transparent
            elevation: 0, // Remove shadow
          ),
        ),
        body:
        _pages[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 2, color: Colors.grey)), // Only top border
            color: Colors.white,
          ),
          child:  BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index; // Update selected index
            });
          },
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: IconTheme.of(context).color,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: IconTheme.of(context).color), // Using icon color from theme
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, color: IconTheme.of(context).color), // Using icon color from theme
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: IconTheme.of(context).color), // Using icon color from theme
              label: 'Profile',
            ),
          ],
        ),

      ),
      ),
    );
  }
}
