// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:amazon_ui/screens/navigation.dart';
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
            height: 126,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TopSlide('assets/image/deasl.jpg', 'Deals'),
                TopSlide('assets/image/th.jpg', 'Fashion'),
                TopSlide(
                    '',
                    'Fresh'),
                TopSlide(
                    'assets/image/Apple-iPhone-12-PNG-HD.png', 'Mobiles'),
                TopSlide('assets/image/th (1).jpg', 'Electronics'),
                TopSlide(
                    'https://getdrawings.com/vectors/tv-vector-25.png',
                    'MiniTV'),
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
               SizedBox(
            height: 126,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Slide2('assets/image/deasl.jpg', 'Deals'),
                Slide2('assets/image/th.jpg', 'Fashion'),
                Slide2(
                    'https://clipart-library.com/image_gallery2/Vegetable-Transparent.png',
                    'Fresh'),
                Slide2(
                    'assets/image/Apple-iPhone-12-PNG-HD.png', 'Mobiles'),
                Slide2('assets/image/th (1).jpg', 'Electronics'),
                Slide2(
                    'https://getdrawings.com/vectors/tv-vector-25.png',
                    'MiniTV'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget TopSlide(String imageUrl, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Image.asset(imageUrl, height: 90, width: 80),
        Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
Widget Slide2(String imageUrl, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Image.asset(imageUrl, height: 90, width: 80),
        Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

