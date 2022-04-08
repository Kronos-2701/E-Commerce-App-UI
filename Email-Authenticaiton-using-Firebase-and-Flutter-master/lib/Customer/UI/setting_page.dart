//import 'package:alecado/Customer/UI/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Customer/UI/notification.dart';

import 'your_orders.dart';

// ignore: camel_case_types
class customer_settings extends StatefulWidget {
  const customer_settings({Key? key}) : super(key: key);

  @override
  _customer_settingsState createState() => _customer_settingsState();
}

// ignore: camel_case_types
class _customer_settingsState extends State<customer_settings> {
  // ignore: non_constant_identifier_names
  Widget Tile(IconData icons, String title, String pageToRoute) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          icons,
          color: Colors.black87,
        ),
        title: Text(title),
        trailing: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, pageToRoute);
            },
            child: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black87,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.all(Radius.circular(10)),
      //         color: Colors.white,
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.grey,
      //             blurRadius: 20,
      //           ),
      //         ],
      //       ),
      //       height: 10,
      //       width: 20,
      //       child: Icon(Icons.chevron_left, color: Colors.black)),
      //   elevation: 0,
      //   toolbarHeight: 40,
      //   titleSpacing: 15,
      //   title: const Text(
      //     "Settings",
      //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 30,
                offset: Offset(0, 40))
          ]),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      "Settings",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    leading: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(8),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: BorderSide(color: Colors.white))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6, bottom: 6),
                        child: Icon(Icons.chevron_left, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                color: Colors.white,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      "assets/images/avatar.png",
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "XXXXXXXXXXXXXXXX",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+00000000000000000",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "");
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black87,
                      )),
                ),
              ),
              Tile(Icons.account_circle, "Account", ""),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const YourOrders()),
                    );
                  },
                  child: Tile(Icons.shopping_cart, "Orders", "")),
              Tile(Icons.settings_display, "Appearance", ""),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const notifications()),
                    );
                  },
                  child: Tile(Icons.message, "Notification", "")),
              Tile(Icons.lock, "Privacy", ""),
              Tile(Icons.data_usage, "Data Usage", ""),
              Tile(Icons.help, "Help", ""),
              Tile(Icons.mail, "Invite your friends", ""),
            ]),
          ),
        ),
      ),
    );
  }
}
