import 'dart:io';

class Product {
  String _id;
  String _name;
  double _price;
  int _quantity;

  Product({
    required String id,
    required String name,
    required double price,
    required int quantity,
  })
      : _id = id,
        _name = name,
        _price = price,
        _quantity = quantity;

  int get quantity => _quantity;

  set quantity(int value) {
    _quantity = value;
  }

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}
List<Product> availableProducts = [
  Product(id: '1', name: 'Product 1', price: 10,quantity: 2),
  Product(id: '2', name: 'Product 2', price: 20,quantity: 5),
  Product(id: '3', name: 'Product 3', price: 30,quantity: 9),
];

void addProduct() {
  print('Enter product details:');
  print('Product ID:');
  String? id = stdin.readLineSync();
  print('Product Name:');
  String? name = stdin.readLineSync();
  print('Product Price:');
  double? price = double.tryParse(stdin.readLineSync() ?? '');
  print('Product Quantity:');
  int? quantity = int.tryParse(stdin.readLineSync() ?? '');

  if (id != null && name != null && price != null && quantity != null) {
    Product product = Product(id: id, name: name, price: price, quantity: quantity);
    availableProducts.add(product);
    print('Product added successfully!');
  } else {
    print('Invalid product details!');
  }
}

void removeProduct() {
  print('Enter the ID of the product to remove:');
  String? productId = stdin.readLineSync();

  if (productId != null) {
    bool removed = false;
    for (Product product in availableProducts) {
      if (product.id == productId) {
        availableProducts.remove(product);
        removed = true;
        print('Product removed successfully!');
        break;
      }
    }

    if (!removed) {
      print('Product not found!');
    }
  }
}
void viewProducts() {
  print('Available Products:');
  for (Product product in availableProducts) {
    print('ID: ${product.id}');
    print('Name: ${product.name}');
    print('Price: \$${product.price}');
    print('Quantity: \$${product.quantity}');
    print('---------------------');
  }
}
void buyProduct(Product product) {
  print('Purchased Product:');
  print('ID: ${product.id}');
  print('Name: ${product.name}');
  print('Price: \$${product.price}');
}
