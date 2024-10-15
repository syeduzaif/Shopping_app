import 'package:flutter/material.dart';
import 'package:shopping_app/app/theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor, // Use theme directly
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 110, // Fixed height for the container holding the GridView
            padding: const EdgeInsets.all(8.0), // Padding around the GridView
            child: GridView.extent(
              maxCrossAxisExtent: 100, // Maximum width for each card
              mainAxisSpacing: 18, // Space between cards vertically
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              children: const [ // List of TopCard widgets
                TopCard(title: 'LCD', imagePath: 'assets/lcd.jpg'),
                TopCard(title: 'Kitchen', imagePath: 'assets/kitchen.jpg'),
                TopCard(title: 'Gaming', imagePath: 'assets/gaming.jpg'),
                TopCard(title: 'Toys', imagePath: 'assets/toys.jpg'),
                TopCard(title: 'Fitness', imagePath: 'assets/fitnes.jpg'),
                TopCard(title: 'Fashion', imagePath: 'assets/fashion.jpg'),
                TopCard(title: 'Beauty', imagePath: 'assets/beauty.jpg'),
                TopCard(title: 'Electronic', imagePath: 'assets/switch.jpg'),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
              Container(
              height: 200, // Set a height for the image gallery
              child: PageView.builder(
                itemCount: imagePaths.length, // Number of images
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imagePaths[index]), // Load the image
                        fit: BoxFit.cover, // Cover the entire container
                      ),
                    ),
                  );
                },
              ),
              )],
            ),
          )
        ],
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const TopCard({required this.imagePath, required this.title, super.key});

  @override
  Widget build(BuildContext context) {

    return Card(

      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        height: 150,
        width: 111,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25, // Set the radius for the CircleAvatar
              backgroundImage: AssetImage(imagePath), // Use the image path
            ),
            SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center, // Center the text
              style:  TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Shopping App',
      theme: lightTheme,  // Light theme
      darkTheme: darkTheme, // Dark theme
      themeMode: ThemeMode.system, // Use system theme mode
      home: const HomeView(),
    ),
  );
}
