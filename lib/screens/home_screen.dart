// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:amazon_ui/navbar_search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(215, 136, 203, 213),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(14),
                elevation: 3,
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
                            hintText: 'Search Amazon.in ',
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
      body: ListView(
        children: [
          Container(
            height: 50,
            color: Color.fromARGB(215, 136, 203, 213),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(8.0)),
                Icon(Icons.location_on),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Deliver to Murshid - Valanchery 676552',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.all(8.0)),
                Column(
                  children: [
                    Image.asset('assets/image/deasl.jpg',
                        height: 90, width: 80),
                    Text(
                      'Deals',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Image.asset('assets/image/th.jpg', height: 80, width: 80),
                    Text(
                      'Fashion',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Image.network(
                      'https://clipart-library.com/image_gallery2/Vegetable-Transparent.png',
                      height: 90,
                      width: 80,
                    ),
                    Text(
                      'Fresh',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/image/Apple-iPhone-12-PNG-HD.png',
                      height: 80,
                      width: 80,
                    ),
                    Text(
                      'Mobiles',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Image.asset('assets/image/th (1).jpg',
                        height: 90, width: 70),
                    Text(
                      'Electronics',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Image.network(
                      'https://getdrawings.com/vectors/tv-vector-25.png',
                      height: 90,
                      width: 60,
                    ),
                    Text(
                      'MiniTV',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          CarouselSlider(
            items: [
              Image.asset(
                'assets/image/1.jpg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/image/2.jpg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/image/3.jpg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/image/4.jpg',
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/image/5.jpg',
                fit: BoxFit.fill,
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2,
              height: 300,
              viewportFraction: 1,
            ),
          ),
          Container(
            color: Color.fromARGB(255, 228, 214, 174),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(9),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/image/slide/WhatsApp Image 2024-03-15 at 20.10.43_b229a646.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/image/slide/WhatsApp Image 2024-03-15 at 20.10.42_a27b2242.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/image/slide/WhatsApp Image 2024-03-15 at 20.10.16_3a8cbe9e.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
