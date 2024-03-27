// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 136, 203, 213),
        automaticallyImplyLeading: false,
        title: Material(
          borderRadius: BorderRadius.circular(14),
          elevation: 3,
          child: Container(
            height: 48,
            padding: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
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
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(215, 136, 203, 213),
            height: 50,
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.all(8.0)),
                const Icon(Icons.location_on),
                SizedBox(width: 5),
                Text(
                  'Deliver to Murshid - Valanchery 676552',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(5)),
                Text('Subtotal 1,44,999', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                const SizedBox(height: 5),
                Text('EMI Available Details'),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(8.0)),
              const Icon(Icons.verified, color: Colors.green),
              Text('Your order is eligible for FREE DELIVERY', style: TextStyle(color: const Color.fromARGB(255, 43, 79, 46))),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 370,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),
              onPressed: () {},
              child: const Text('Proceed to Buy (2 items)', style: TextStyle(color: Colors.black)),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Text('Send as a gift, include custom message', style: const TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/image/Apple-iPhone-12-PNG-HD.png'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Apple iphone 4 pro(128 GB)-'),
                    Text('Deep purple'),
                    Text('1,19,999', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('eligible for free shipping'),
                    Text('Colour : Deep purple ', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('size : 128 GB', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('20 cash back applied buy with other items in cart', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(4)),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.white),
                child: Text('Delete'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.white),
                child: Text('Save for later'),
              ),
            ],
          ),
          const SizedBox(height: 20),
         
        ],
      ),
    );
  }
}
