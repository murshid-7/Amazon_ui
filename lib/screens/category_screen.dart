// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:amazon_ui/screens/navigation.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(218, 179, 224, 231),
      bottomNavigationBar: BottomNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 136, 203, 213),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Material(
          borderRadius: BorderRadius.circular(14),
          elevation: 8,
          child: Container(
            height: 48,
            padding: EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: 'Search Amazon.in',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 9),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 170,
                        height: 70,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/image/products/pay.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 180,
                        height: 70,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/image/products/tv logo.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Amazon Pay',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Amazon miniTV',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProductImg('assets/image/products/cart1 (1).jpg'),
              ProductImg('assets/image/products/cart1 (2).jpg'),
              ProductImg('assets/image/products/cart1 (3).jpg'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProductImg('assets/image/products/cart1 (4).jpg'),
              ProductImg('assets/image/products/cart1 (5).jpg'),
              ProductImg('assets/image/products/cart1 (6).jpg'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProductImg('assets/image/products/cart1 (7).jpg'),
              ProductImg('assets/image/products/cart1 (4).jpg'),
              ProductImg('assets/image/products/cart1 (2).jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget ProductImg(String imagePath) {
    return SizedBox(
      width: 120,
      height: 170,
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
