import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';

class Shop extends ChangeNotifier {
  final List<Products> _shop = [
    Products(
        name: "Sneakers 1",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 599.99,
        imagepath: 'assets/images/shoe1.jpg'),
    Products(
        name: "Sneakers 2",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 678.99,
        imagepath: 'assets/images/shoe2.jpg'),
    Products(
        name: "Sneakers 3",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 376.99,
        imagepath: 'assets/images/shoe3.jpg'),
    Products(
        name: "Sneakers 4",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 998.99,
        imagepath: 'assets/images/shoe4.jpg'),
    Products(
        name: "Sneakers 5",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 938.99,
        imagepath: 'assets/images/shoe5.jpg'),
    Products(
        name: "Sneakers 6",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 998.99,
        imagepath: 'assets/images/shoe6.jpg'),
    Products(
        name: "Sneakers 7",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 958.99,
        imagepath: 'assets/images/shoe7.jpg'),
    Products(
        name: "Sneakers 8",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 928.99,
        imagepath: 'assets/images/shoe8.jpg'),
    Products(
        name: "Sneakers 9",
        description: """Classic White Canvas Sneakers
Step into timeless style with these classic white canvas sneakers. These versatile kicks are perfect for a casual day out or pairing with your favorite jeans""",
        price: 918.99,
        imagepath: 'assets/images/shoe9.jpg'),
  ];
  List<Products> _cart = [];

  List<Products> get shop => _shop;

  List<Products> get cart => _cart;

  void addtocart(Products item) {
    _cart.add(item);
    notifyListeners();
  }

  void removefromcart(Products item) {
    _cart.remove(item);
    notifyListeners();
  }
}
