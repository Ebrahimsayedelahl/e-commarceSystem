import 'user.dart';
import 'dart:io';
import 'product.dart';

class Login {
  static User? currentUser;

   void login() {
    print('Login:');
    print('Username:');
    String? username = stdin.readLineSync();
    print('Password:');
    String? password = stdin.readLineSync();

    User user1 = User(
      id: '1',
      name: 'Ahmed Ali',
      mobile: '0123456789',
      email: 'ahmed.ali@gmail.com',
      address: 'Mansoura',
      userName: 'ahmedali',
      password: '1597530',
      isAdmin: true,
    );
    User user2 = User(
      id: '2',
      name: 'Ahmed Hassan',
      mobile: '0123456789',
      email: 'ahmed.hassan@gmail.com',
      address: 'Mansoura',
      userName: 'ahmedhassan',
      password: '1597530',
      isAdmin: true,
    );
    User user3 = User(
      id: '3',
      name: 'Nader Ahmed',
      mobile: '0123456789',
      email: 'nader.ahmed@gmail.com',
      address: 'Mansoura',
      userName: 'naderahmed',
      password: '1597530',
      isAdmin: false,
    );
    User user4 = User(
      id: '4',
      name: 'Mohamed Ebrahim',
      mobile: '0123456789',
      email: 'mohamed.ebrahim@gmail.com',
      address: 'Mansoura',
      userName: 'mohamedebrahim',
      password: '1597530',
      isAdmin: false,
    );

    List<User> users = [user1, user2, user3, user4];

    for (User user in users) {
      if (user.userName == username && user.password == password) {
        currentUser = user;
        break;
      }
    }

    if (currentUser != null) {
      if (currentUser!.isAdmin) {
        while (true) {
          print('Please select an option:');
          print('1. Add Product');
          print('2. Remove Product');
          print('3.  View Products');
          print('4. Exit');

          String? input = stdin.readLineSync();
          if (input == '1') {
            addProduct();
          } else if (input == '2') {
            removeProduct();
          } else if (input == '3') {
            viewProducts();
          } else if (input == '4') {
            break;
          } else {
            print('Invalid option!');
          }
        }
      } else {
        while (true) {
          print('Please select an option:');
          print('1. View Products');
          print('2. Buy Product');
          print('3. Exit');

          String? input = stdin.readLineSync();
          if (input == '1') {
            viewProducts();
          } else if (input == '2') {
            print('Enter the ID of the product to buy:');
            String? productId = stdin.readLineSync();

            if (productId != null) {
              Product? selectedProduct;
              for (Product product in availableProducts) {
                if (product.id == productId) {
                  selectedProduct = product;
                  break;
                }
              }

              if (selectedProduct != null) {
                buyProduct(selectedProduct);
              } else {
                print('Product not found!');
              }
            }
          } else if (input == '3') {
            break;
          } else {
            print('Invalid option!');
          }
        }
      }
    } else {
      print('Invalid username or password!');
    }
  }
}