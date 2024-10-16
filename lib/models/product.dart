import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Displaying the product image
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                product.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String imageUrl; // New field for product image URL

  Product({required this.name, required this.price, required this.imageUrl});
}

final List<Product> products = [
  Product(name: "LCD TV", price: 400.00, imageUrl: 'assets/lcd.jpg'),
  Product(name: "Kitchen Set", price: 150.00, imageUrl: 'assets/kitchen.jpg'),
  Product(name: "Gaming Console", price: 300.00, imageUrl: 'assets/gaming.jpg'),
  Product(name: "Toy Car", price: 20.00, imageUrl: 'assets/toys.jpg'),
  Product(name: "Fitness Tracker", price: 50.00, imageUrl: 'assets/fitnes.jpg'),
  Product(name: "Fashion Dress", price: 70.00, imageUrl: 'assets/fashion.jpg'),
  Product(
      name: "Casual Shoes", price: 45.00, imageUrl: 'assets/casual shoes.jpg'),
  Product(name: "LED Bulb", price: 5.00, imageUrl: 'assets/bulb.jpg'),
  Product(name: "Makeup Brush Set", price: 15.00, imageUrl: 'assets/brush.jpg'),
  Product(name: "Duct Tape", price: 3.00, imageUrl: 'assets/Duck tape.jpg'),
  Product(name: "Cleaning Duster", price: 7.00, imageUrl: 'assets/duster.jpg'),
  Product(
      name: "Full Sleeves Shirt",
      price: 30.00,
      imageUrl: 'assets/full sleves shirt.jpg'),
  Product(name: "Wall Paint", price: 25.00, imageUrl: 'assets/paint.jpg'),
  Product(
      name: "Pakistan Day Poster",
      price: 10.00,
      imageUrl: 'assets/pak day.jpg'),
  Product(name: "Loafers", price: 55.00, imageUrl: 'assets/pame lofer.jpg'),
  Product(name: "Men's Shirt", price: 40.00, imageUrl: 'assets/shirt.jpg'),
  Product(name: "Running Shoes", price: 60.00, imageUrl: 'assets/shoes.jpg'),
  Product(
      name: "Stain Remover", price: 8.00, imageUrl: 'assets/stain remover.jpg'),
  Product(name: "T-Shirt", price: 20.00, imageUrl: 'assets/t shirt.jpg'),
  Product(name: "Trousers", price: 35.00, imageUrl: 'assets/trouser.jpg'),
  Product(
      name: "Beauty Products Set", price: 25.00, imageUrl: 'assets/beauty.jpg'),
  Product(
      name: "Battery Pack", price: 15.00, imageUrl: 'assets/battry pack.jpg'),
  Product(
      name: "Bed Sheet Set", price: 45.00, imageUrl: 'assets/bed sheet.jpg'),
  Product(
      name: "Bluetooth Alarm Clock",
      price: 50.00,
      imageUrl: 'assets/bluetooth clock.jpg'),
  Product(name: "Scented Candle", price: 12.00, imageUrl: 'assets/candel.jpg'),
  Product(name: "Gift Card", price: 100.00, imageUrl: 'assets/card.jpg'),
  Product(
      name: "Game Controller", price: 35.00, imageUrl: 'assets/controller.jpg'),
  Product(name: "Floor Lamp", price: 65.00, imageUrl: 'assets/floor lamp.jpg'),
  Product(name: "Flower Vase", price: 20.00, imageUrl: 'assets/flower.jpg'),
  Product(name: "Roof Lamp", price: 90.00, imageUrl: 'assets/roof lamp.jpg'),
  Product(
      name: "LED Ceiling Light", price: 80.00, imageUrl: 'assets/roof led.jpg'),
  Product(
      name: "Side Table Lamp", price: 40.00, imageUrl: 'assets/side lamp.jpg'),
  Product(
      name: "Skin Care Kit", price: 30.00, imageUrl: 'assets/skin care.jpg'),
  Product(
      name: "Women's Slippers", price: 18.00, imageUrl: 'assets/slipper.jpg'),
  Product(
      name: "Designer Slippers",
      price: 22.00,
      imageUrl: 'assets/slipper style.jpg'),
  Product(
      name: "Stone Showpiece", price: 55.00, imageUrl: 'assets/stone show.jpg'),
  Product(
      name: "Sundial Clock", price: 35.00, imageUrl: 'assets/sun clock.jpg'),
  Product(name: "Wall Lamp", price: 75.00, imageUrl: 'assets/wall lamp.jpg'),
  Product(
      name: "Women's Casual Slippers",
      price: 25.00,
      imageUrl: 'assets/women slipper.jpg'),
  Product(
      name: "Wooden Wall Clock",
      price: 45.00,
      imageUrl: 'assets/wooden clock.jpg'),
  Product(name: "Painting", price: 120.00, imageUrl: 'assets/painting.jpg'),
  Product(
      name: "Electronic Switch", price: 15.00, imageUrl: 'assets/switch.jpg'),
  Product(
      name: "Battery Pack", price: 15.00, imageUrl: 'assets/battry pack.jpg'),
  Product(
      name: "Beauty Products Set", price: 25.00, imageUrl: 'assets/beauty.jpg'),
  Product(
      name: "Bed Sheet Set", price: 45.00, imageUrl: 'assets/bed sheet.jpg'),
  Product(
      name: "Bluetooth Alarm Clock",
      price: 50.00,
      imageUrl: 'assets/bluetooth clock.jpg'),
  Product(
      name: "Casual Shoes", price: 45.00, imageUrl: 'assets/casual shoes.jpg'),
  Product(name: "Cleaning Duster", price: 7.00, imageUrl: 'assets/duster.jpg'),
  Product(
      name: "Designer Slippers",
      price: 22.00,
      imageUrl: 'assets/slipper style.jpg'),
  Product(name: "Duct Tape", price: 3.00, imageUrl: 'assets/Duck tape.jpg'),
  Product(name: "Fashion Dress", price: 70.00, imageUrl: 'assets/fashion.jpg'),
  Product(name: "Fitness Tracker", price: 50.00, imageUrl: 'assets/fitnes.jpg'),
  Product(name: "Floor Lamp", price: 65.00, imageUrl: 'assets/floor lamp.jpg'),
  Product(name: "Flower Vase", price: 20.00, imageUrl: 'assets/flower.jpg'),
  Product(
      name: "Full Sleeves Shirt",
      price: 30.00,
      imageUrl: 'assets/full sleves shirt.jpg'),
  Product(
      name: "Game Controller", price: 35.00, imageUrl: 'assets/controller.jpg'),
  Product(name: "Gaming Console", price: 300.00, imageUrl: 'assets/gaming.jpg'),
  Product(name: "Gift Card", price: 100.00, imageUrl: 'assets/card.jpg'),
  Product(name: "Kitchen Set", price: 150.00, imageUrl: 'assets/kitchen.jpg'),
  Product(name: "LCD TV", price: 400.00, imageUrl: 'assets/lcd.jpg'),
  Product(name: "LED Bulb", price: 5.00, imageUrl: 'assets/bulb.jpg'),
  Product(
      name: "LED Ceiling Light", price: 80.00, imageUrl: 'assets/roof led.jpg'),
  Product(name: "Loafers", price: 55.00, imageUrl: 'assets/pame lofer.jpg'),
  Product(name: "Makeup Brush Set", price: 15.00, imageUrl: 'assets/brush.jpg'),
  Product(name: "Men's Shirt", price: 40.00, imageUrl: 'assets/shirt.jpg'),
  Product(
      name: "Pakistan Day Poster",
      price: 10.00,
      imageUrl: 'assets/pak day.jpg'),
  Product(name: "Painting", price: 120.00, imageUrl: 'assets/painting.jpg'),
  Product(name: "Roof Lamp", price: 90.00, imageUrl: 'assets/roof lamp.jpg'),
  Product(name: "Running Shoes", price: 60.00, imageUrl: 'assets/shoes.jpg'),
  Product(name: "Scented Candle", price: 12.00, imageUrl: 'assets/candel.jpg'),
  Product(
      name: "Side Table Lamp", price: 40.00, imageUrl: 'assets/side lamp.jpg'),
  Product(
      name: "Skin Care Kit", price: 30.00, imageUrl: 'assets/skin care.jpg'),
  Product(
      name: "Stain Remover", price: 8.00, imageUrl: 'assets/stain remover.jpg'),
  Product(
      name: "Stone Showpiece", price: 55.00, imageUrl: 'assets/stone show.jpg'),
  Product(
      name: "Sundial Clock", price: 35.00, imageUrl: 'assets/sun clock.jpg'),
  Product(name: "T-Shirt", price: 20.00, imageUrl: 'assets/t shirt.jpg'),
  Product(name: "Toy Car", price: 20.00, imageUrl: 'assets/toys.jpg'),
  Product(name: "Trousers", price: 35.00, imageUrl: 'assets/trouser.jpg'),
  Product(name: "Wall Lamp", price: 75.00, imageUrl: 'assets/wall lamp.jpg'),
  Product(name: "Wall Paint", price: 25.00, imageUrl: 'assets/paint.jpg'),
  Product(
      name: "Women's Casual Slippers",
      price: 25.00,
      imageUrl: 'assets/women slipper.jpg'),
  Product(
      name: "Women's Slippers", price: 18.00, imageUrl: 'assets/slipper.jpg'),
  Product(
      name: "Wooden Wall Clock",
      price: 45.00,
      imageUrl: 'assets/wooden clock.jpg'),
];
