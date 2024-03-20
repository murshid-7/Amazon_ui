// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:amazon_ui/navbar_search.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(215, 136, 203, 213),
        automaticallyImplyLeading: false,
        title: Material(
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
                      prefixIcon: Icon(Icons.search, color: Colors.black),
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
      bottomNavigationBar: BottomNav(),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Color.fromARGB(215, 136, 203, 213),
                height: 50,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(8.0)),
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Deliver to Murshid - Valanchery 676552',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Text('Subtotal 1,44,999',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('EMI Available Details'),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(8.0)),
                  Icon(Icons.verified, color: Colors.green),
                  Text(
                    'Your order is eligible for FREE DELIVERY',
                    style: TextStyle(color: Color.fromARGB(255, 43, 79, 46)),
                  )
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 370,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                  onPressed: () {},
                  child: const Text(
                    'Proceed to Buy (2 items)',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text(
                    'Send as a gift, include custom message',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                          'assets/image/Apple-iPhone-12-PNG-HD.png'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Apple iphone 4 pro(128 GB)-'),
                        Text('Deep purple'),
                        Text('1,19,999',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('eligible for free shipping'),
                        Text('Colour : Deep purple ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('size : 128 GB',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                            '20 cash back applied buy with other items in cart',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(4)),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    child: Text('Delete'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    child: Text('Save for later'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('see more like this')
            ],
          )
        ],
      ),
    );
  }
}
