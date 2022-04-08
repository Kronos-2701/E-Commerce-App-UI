import 'package:login/Customer/UI/product.dart';
import 'package:flutter/material.dart';
import 'package:login/Customer/UI/customer_messages.dart';
import 'package:login/Customer/UI/customer_profile.dart';

import 'chat_page.dart';
import 'home.dart';
import 'your_orders.dart';

class home_module extends StatelessWidget {
  const home_module({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  final screens = [
    Home_Page(),
    customer_profile(),
    YourOrders(),
    Customer_Messages()
  ];

  //List of screens

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff77DD77),
        unselectedItemColor: Color(0XFFD6DBDE),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: "",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: "",
            // backgroundColor: Colors.grey,
          )
        ],
      ),
    );
  }
}
