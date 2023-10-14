import 'package:e_commarce_system/product.dart';
class ShoppingCart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  void removeProduct(Product product) {
    products.remove(product);
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    double? price;
    for (Product product in products) {
      totalPrice += product.price;
    }
    return totalPrice;
   price = totalPrice;
  }
}

