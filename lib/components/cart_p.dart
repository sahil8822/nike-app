import 'package:coffee/components/shoe.dart';
import 'package:flutter/material.dart';

class CartP extends ChangeNotifier {
  //list of shoes for sele
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air',
        price: "20000",
        imagePath: "shoe1.png",
        description: 'compact shoe'),
    Shoe(
        name: ' Air Jorden',
        price: "28000",
        imagePath: "shoe2.png",
        description: 'compact shoe'),
    Shoe(
        name: 'jorden wild',
        price: "26000",
        imagePath: "shoe3.png",
        description: 'compact shoe'),
    Shoe(
        name: 'Jorden tevscort ',
        price: "43000",
        imagePath: "shoe4.png",
        description: 'compact shoe'),
    Shoe(
        name: 'jorden wild',
        price: "33000",
        imagePath: "shoe5.png",
        description: 'compact shoe'),
  ];
  //list of itome
  List<Shoe> userCart = [];
  //get list of shoes
  List<Shoe> getShoList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
