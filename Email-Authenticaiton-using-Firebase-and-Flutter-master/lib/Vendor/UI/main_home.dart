import 'package:flutter/material.dart';
import 'package:login/Vendor/UI/dashboard.dart';
import 'package:login/Vendor/UI/market.dart';
import 'package:login/Vendor/UI/messages.dart';

void main() {
  runApp(const main_Home());
}

class main_Home extends StatelessWidget {
  const main_Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    Messages(),
    market(),
    Dashboard(),
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
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0XFFD6DBDE),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: "Messages",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Market",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.grey)
        ],
      ),
    );
  }
}
