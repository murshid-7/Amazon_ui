// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:amazon_ui/navbar_search.dart';

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
                          addCart('assets/image/iphone 11.webp'),
                          addCart('assets/image/iphone 11.webp'),
                          addCart('assets/image/iphone 11.webp'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          addCart('assets/image/Apple-iPhone-12-PNG-HD.png'),
                          addCart('assets/image/Apple-iPhone-12-PNG-HD.png'),
                          addCart('assets/image/Apple-iPhone-12-PNG-HD.png'),
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

  Card addCart(String url) {
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
                  child: Image.asset(url),
                ),
                const Text('Apple'),
                const Text('iPhone 12 - Midnight'),
                const Text('₹52,999 (12% off)'),
                const Text('Delivery by Amazon'),
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
