import 'package:flutter/foundation.dart';
import 'package:provider_example/features/products/model/product_model.dart';

class User extends ChangeNotifier {
  // List<Product> basketProducts = [];

  Map<Product, int> basketProducts = {};

  void addFirstItemToBasket(Product product) {
    basketProducts[product] = 1;
  }

  void incrementProduct(Product product) {
    basketProducts[product]++;
  }

  void increaseProduct(Product product) {
    basketProducts[product]--;
  }
}
