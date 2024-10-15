import 'package:stacked/stacked.dart';
import 'package:shopping_app/models/product.dart';

class HomeViewModel extends BaseViewModel {
  List<Product> _products = []; // Initialized to an empty list
  List<Product> get products => _products;

  HomeViewModel() {
    fetchProducts(); // Fetch products when the ViewModel is created
  }

  void fetchProducts() {
    // Example of fetching products, replace with your data source
    _products = [
      Product(name: 'Product 1', price: 10.0, imageUrl: 'assets/lcd.jpg'),
      Product(name: 'Product 2', price: 20.0, imageUrl: 'assets/remote.jpg'),
      Product(name: 'Product 2', price: 20.0, imageUrl: 'assets/switch.jpg'),

      // Add more products as needed
    ];
    notifyListeners(); // Notify listeners of updates
  }

  void navigateToProductView(Product product) {
  }
}
