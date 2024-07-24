import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoesShop = [
    Shoe(
      name: 'Custom Dunk',
      price: '350',
      imagePath: 'assets/images/custom-nike-dunk-high.png',
      description: 'Custom Nike Dunk high shoes',
    ),
    Shoe(
      name: 'Dunk High',
      price: '300',
      imagePath: 'assets/images/dunk-high.png',
      description: 'Nike Dunk high shoes',
    ),
    Shoe(
      name: 'Air Force',
      price: '500',
      imagePath: 'assets/images/nike-air-force-1.png',
      description: 'Nike Air Force new shoes',
    ),
    Shoe(
      name: 'Nike Wrestling',
      price: '250',
      imagePath: 'assets/images/mens-wrestling-shoes.png',
      description: 'Nike Wrestling men shoes',
    ),
    Shoe(
      name: 'Blazer Mid 77',
      price: '250',
      imagePath: 'assets/images/blazer-mid-77.png',
      description: 'Nike Blazer Mid 77 shoes',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoesShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
