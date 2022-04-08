import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  _notificationsState createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 12),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(10),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.white))),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, right: 0, left: 0),
                    child: Icon(Icons.chevron_left, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, bottom: 30),
                child: Text(
                  "Notification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Times New Roman',
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/icon/coreect.png",
                  ),
                  title: Column(
                    children: [
                      Text(
                        "Your order has been taken by the Hotel",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Times New Roman',
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 210, top: 10),
                        child: Text(
                          "Recently",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 10,
                            fontFamily: 'Times New Roman',
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/icon/dollar.png",
                  ),
                  title: Column(
                    children: [
                      Text(
                        "Fate Credit of Rs10000 was successfull",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Times New Roman',
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 210, top: 10),
                        child: Text(
                          "10:00 AM",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 10,
                            fontFamily: 'Times New Roman',
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                leading: Image.asset(
                  "assets/icon/red_cross.png",
                ),
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Text(
                        "Your order has been cancelled",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Times New Roman',
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200, top: 10),
                      child: Text(
                        "22 July 2021",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                          fontFamily: 'Times New Roman',
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
