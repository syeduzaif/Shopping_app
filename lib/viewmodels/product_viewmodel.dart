import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';

class ProductView extends StatelessWidget {
  final Product product;

  const ProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(product.imageUrl),
          const SizedBox(height: 16),
          Text('\$${product.price}', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 16),
          const Text('Description of the product goes here.'),
        ],
      ),
    );
  }
}
