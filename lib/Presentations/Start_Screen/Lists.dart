// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brand {
  String image;
  String name;
  int price;
  Brand({required this.image, required this.name, required this.price});
}

List<Brand> brandList = [
  Brand(image: "assets/images/0.jpeg", name: "Bag", price: 130),
  Brand(image: "assets/images/1.jpeg", name: "Fila", price: 136),
  Brand(image: "assets/images/2.jpeg", name: " Nike", price: 99),
  Brand(image: "assets/images/3.webp", name: "Adidas", price: 88),
  Brand(image: "assets/images/4.webp", name: "Fila", price: 50),
  Brand(image: "assets/images/5.jpeg", name: " Nike", price: 124),
];

class Eats {
  String image;
  String name;
  int price;
  Eats({required this.image, required this.name, required this.price});
}

List<Eats> eatList = [
  Eats(image: "assets/images/6.jpeg", name: "Bag", price: 130),
  Eats(image: "assets/images/7.jpeg", name: "Fila", price: 136),
  Eats(image: "assets/images/8.jpeg", name: " Nike", price: 99),
  Eats(image: "assets/images/9.jpeg", name: "Adidas", price: 88),
  Eats(image: "assets/images/10.jpeg", name: "Fila", price: 50),
  Eats(image: "assets/images/11.jpeg", name: " Nike", price: 124),
];

List<String> Bannerimages = [
  "assets/images/1.jpeg",
  "assets/images/7.jpeg",
  "assets/images/11.jpeg",
];

List list = [
  "Home",
  "login",
  "Categories",
  "Foods",
  "Drinks",
  "T-Shirt",
  "Shoses",
];
List<Widget> icons = [
  CircleAvatar(
    child: Icon(Icons.home),
  ),
  CircleAvatar(
    child: Icon(Icons.account_circle),
  ),
  CircleAvatar(
    child: Icon(Icons.category_outlined),
  ),
  CircleAvatar(
    child: Icon(Icons.food_bank_outlined),
  ),
  CircleAvatar(
    child: Icon(Icons.local_drink_outlined),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: Image.asset(
      "assets/images/tsheart.jpg",
      height: 50,
      width: 50,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: Image.asset(
      "assets/images/1.jpeg",
      height: 50,
      width: 50,
    ),
  ),
];

List catList = [
  "assets/images/onbording.png",
  "assets/images/Forgot password.png",
  "assets/images/Mask Group.png",
  "assets/images/7.jpeg",
  "assets/images/11.jpeg",
  "assets/images/tsheart.jpg",
  "assets/images/2.jpeg",
];
