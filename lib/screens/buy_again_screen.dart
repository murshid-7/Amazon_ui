// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:amazon_ui/screens/navigation.dart';

import 'package:flutter/material.dart';

class BuyAgain extends StatelessWidget {
  const BuyAgain({super.key});

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
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Buy Again',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(9),
                      child: Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text('Filters',
                                    style: TextStyle(color: Colors.black)),
                                Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: Colors.black,
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Search all orders',
                          contentPadding: EdgeInsets.only(top: 10),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          addCart(
                            'https://m.media-amazon.com/images/I/61VuVU94RnL._AC_UY327_FMwebp_QL65_.jpg',
                            "iphone 11 (black 64gb)",
                            "40000/-",
                            'get it by mon, april 17',
                            'blockbuster value deal',
                          ),
                          addCart(
                              'https://m.media-amazon.com/images/I/818VqDSKpCL._AC_UY327_FMwebp_QL65_.jpg',
                              'Redmi Note11 (space 32gb)',
                              "25000/-",
                              'get it by mon, april 17'),
                          addCart(
                              'https://m.media-amazon.com/images/I/61gdyDHr9ZL._AC_UY327_FMwebp_QL65_.jpg',
                              "Vivo Y27 (Burgundy 6gb ram)",
                              "18000/-",
                              'get it by mon, april 17')
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          addCart(
                              'https://m.media-amazon.com/images/I/61G6ef-AH-L._AC_UY327_FMwebp_QL65_.jpg',
                              "Tecno pop8(Grey 240gb)",
                              "30000/-",
                              'get it by mon, april 17'),
                          addCart(
                              'https://m.media-amazon.com/images/I/813sVzTfvaL._AC_UY327_FMwebp_QL65_.jpg',
                              'Samsung m04(green 4gb)',
                              "8999/-",
                              'get it by mon, april 17'),
                          addCart(
                              'https://m.media-amazon.com/images/I/717Ol2BoLLL._AC_UY327_FMwebp_QL65_.jpg',
                              "Nothing 2a(black 8gb ram)",
                              "24500/-",
                              'get it by mon, april 17')
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          addCart(
                              'https://m.media-amazon.com/images/I/81KcHWggkkL._AC_UY327_FMwebp_QL65_.jpg',
                              "Infixix 8(8gb ram)",
                              "17000/-",
                              'get it by mon, april 17'),
                          addCart(
                              'https://m.media-amazon.com/images/I/61x1B80rNnL._AC_UY327_FMwebp_QL65_.jpg',
                              'vivo v20(6gb ram)',
                              "27000/-",
                              'get it by mon, april 17'),
                          addCart(
                              'https://m.media-amazon.com/images/I/61v29G37-WL._AC_UY327_FMwebp_QL65_.jpg',
                              "I-Kall 510(4gb ram)",
                              "5000/-",
                              'get it by mon, april 17')
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget addCart(String url, String text, String text1, String text3,
      [String text2 = '']) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            width: 190,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  child: Image.network(url),
                ),
                Text(text),
                Text(text1),
                Text(text2,
                    style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 193, 54, 44),
                        color: Colors.white)),
                Text(text3),
                Row(
                  children: [
                    Text(
                      '      -28%',
                      style: TextStyle(color: Colors.red),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('offer applied')
                  ],
                ),
                Text('Delivery by amazon'),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amber)),
                    onPressed: () {},
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
