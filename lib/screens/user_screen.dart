// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'package:amazon_ui/screens/buy_again_screen.dart';
import 'package:amazon_ui/screens/navigation.dart';
import 'package:amazon_ui/screens/orders_screen.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 136, 203, 213),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        leading: Image.asset('assets/image/-11596307623br3hlq9vjt.png'),
      ),
      bottomNavigationBar: BottomNav(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, Murshid',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    MaterialButton(
                      color: Color.fromARGB(255, 247, 247, 247),
                      height: 50,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => YourOrders()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.grey),
                      ),
                      child: Text(
                        '            Your Orders      ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 9),
                    MaterialButton(
                      color: Color.fromARGB(255, 247, 247, 247),
                      height: 50,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BuyAgain()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.grey),
                      ),
                      child: Text(
                        '          Buy Again          ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    MaterialButton(
                      color: Color.fromARGB(255, 247, 247, 247),
                      height: 50,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.grey),
                      ),
                      child: Text(
                        '          Your Account      ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 9),
                    MaterialButton(
                      color: Color.fromARGB(255, 247, 247, 247),
                      height: 50,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.grey),
                      ),
                      child: Text(
                        '          Wish  List          ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Orders',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 63, 96, 112),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                OrderImg(
                  'assets/image/slide/WhatsApp Image 2024-03-15 at 20.10.42_a27b2242.jpg',
                ),
                OrderImg(
                  'assets/image/slide/bag.jpg',
                ),
                OrderImg(
                  'assets/image/slide/WhatsApp Image 2024-03-15 at 20.10.42_a27b2242.jpg',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Keep shopping for',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit | history',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 69, 98, 113),
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                OrderImg(
                  'assets/image/slide/shampo.jpg',
                ),
                OrderImg(
                  'assets/image/slide/WhatsApp Image 2024-03-15 at 20.10.42_a27b2242.jpg',
                ),
                OrderImg(
                  'assets/image/slide/bag.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget OrderImg(String imagePath) {
    return Container(
      width: 150,
      height: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
