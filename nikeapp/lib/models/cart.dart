import 'package:flutter/material.dart';
import 'package:nikeapp/models/shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordans',
      price: '240',
      imagePath: 'lib/images/shoe-1.webp',
      description: '2016 model',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '210',
      imagePath: 'lib/images/shoe-2.webp',
      description: '2009 model',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '310',
      imagePath: 'lib/images/shoe-3.webp',
      description: '2022 model',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '350',
      imagePath: 'lib/images/shoe-4.webp',
      description: '2020 model',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '300',
      imagePath: 'lib/images/shoe-5.webp',
      description: '2017 model',
    ),
    Shoe(
      name: 'High Tops',
      price: '170',
      imagePath: 'lib/images/shoe-6.webp',
      description: '2007 model',
    ),
    Shoe(
      name: 'Convers',
      price: '150',
      imagePath: 'lib/images/shoe-7.webp',
      description: '2009 model',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '300',
      imagePath: 'lib/images/shoe-8.webp',
      description: '2000 model',
    ),
  ];
  // List of items in the user's cart
  List<Shoe> userCart = [];

  // Method: Get list of shoes for sale
  List<Shoe> getShoelist() {
    return shoeShop;
  }

  // Method: Get Cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Method: Add Items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Method: Remove Items to cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
