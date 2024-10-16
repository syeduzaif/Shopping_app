import 'package:flutter/material.dart';
import 'package:shopping_app/app/theme.dart';
import 'package:shopping_app/viewmodels/home_viewmodel.dart';
import 'package:shopping_app/models/product.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 110,
              padding: const EdgeInsets.all(8.0),
              child: GridView.extent(
                maxCrossAxisExtent: 100,
                mainAxisSpacing: 18,
                scrollDirection: Axis.horizontal,
                children: const [
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
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 220,
                    child: PageView.builder(
                      itemCount: imagePaths.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 185, // Set height for the image container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(imagePaths[index]),
                                  fit: BoxFit
                                      .fill, // Adjust as needed (contain or cover)
                                ),
                              ),
                            ),
                            SizedBox(height: 8), // Space between image and text
                            Text(
                              (imageText[index]),
                              style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color, // Using theme color
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(padding: EdgeInsets.all(10), child: Text("Products",style: TextStyle(fontSize: 20),)),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two products per row
                mainAxisSpacing: 18,
                crossAxisSpacing: 5,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ],
        ),
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
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        height: 150,
        width: 111,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center, // Center the text
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color),
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
      theme: lightTheme, // Light theme
      darkTheme: darkTheme, // Dark theme
      themeMode: ThemeMode.system, // Use system theme mode
      home: const HomeView(),
    ),
  );
}
