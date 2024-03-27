// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:amazon_ui/screens/cart_screen.dart';
import 'package:amazon_ui/screens/category_screen.dart';
import 'package:amazon_ui/screens/home_screen.dart';
import 'package:amazon_ui/screens/user_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              },
              icon: Icon(Icons.home, size: 30)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UserScreen()));
              },
              icon: Icon(Icons.person, size: 30)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              icon: Icon(Icons.add_shopping_cart, size: 30)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CategoryScreen()));
              },
              icon: Icon(Icons.list, size: 30))
        ],
      ),
    );
  }
}

 
