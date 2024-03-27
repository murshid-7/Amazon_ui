// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:amazon_ui/screens/navigation.dart';
import 'package:flutter/material.dart';

class YourOrders extends StatelessWidget {
  const YourOrders({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(215, 136, 203, 213),
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
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Order',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Your Orders',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    Icon(Icons.arrow_forward_ios_outlined),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey), // Separate border
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Your Orders',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    Icon(Icons.arrow_forward_ios_outlined),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Account Settings',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SettingsRow('Login & security',),
                            Divider(color: Colors.grey),
                            SettingsRow('Your Addresses'),
                            Divider(color: Colors.grey),
                            SettingsRow('Login with Amazon'),
                            Divider(color: Colors.grey),
                            SettingsRow('content and devices'),
                            Divider(color: Colors.grey),
                            SettingsRow('Manage Your Profiles'),
                            Divider(color: Colors.grey),
                            SettingsRow('Manage Prime membership'),
                            Divider(color: Colors.grey),
                            SettingsRow('Memberships & subscriptions'),
                          ],
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget SettingsRow(String text) {
  return Padding(
    padding: EdgeInsets.all(13),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Icon(Icons.arrow_forward_ios_outlined),
      ],
    ),
  );
}
