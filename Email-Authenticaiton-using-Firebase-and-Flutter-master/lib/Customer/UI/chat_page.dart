import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Customer/UI/Ringing.dart';
import 'package:login/user_data.dart';

// ignore: camel_case_types
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

// ignore: camel_case_types
class _ChatState extends State<Chat> {
  bool isDark = true;
  bool hasInternet = true;
  final message = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  double getWidth() {
    return MediaQuery.of(context).size.width * 0.3;
  }

  String? getTime() {
    DateTime now = DateTime.now();
    String time = now.hour.toString() + ":" + now.minute.toString();
    return time;
  }

  // ignore: non_constant_identifier_names
  Widget ChatUI(double left, double right, String message, bool isBot,
      Color bgcolor, Color textColor) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
          mainAxisAlignment:
              isBot ? MainAxisAlignment.start : MainAxisAlignment.end,
          //this will determine if the message should be displayed left or right
          children: [
            isBot
                ? Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          "assets/images/avatar.png",
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  )
                : Container(),
            Flexible(
              //Wrapping the container with flexible widget
              child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: EdgeInsets.only(
                      right: right, left: left, top: 4, bottom: 4),
                  decoration: BoxDecoration(
                      color: bgcolor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        //topLeft: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ), //Offset
                          blurRadius: 12.0,
                          spreadRadius: 2.0,
                        ),
                      ]),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                          child: Text(
                        message,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                        ),
                      )),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          getTime()!,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: textColor,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            !isBot
                ? Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          "assets/images/avatar.png",
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  )
                : Container(),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(5),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.white))),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 6),
                  child: Icon(Icons.chevron_left, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Trident Hotel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const callings()),
                );
              },
              icon: const Icon(
                Icons.call,
                color: Colors.black87,
              )),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: Container(
              color: const Color(0xFFFDF7F0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    reverse: true,
                    itemCount: Logic.data.length,
                    itemBuilder: (context, index) {
                      return Logic.data[index]["data"] == 1
                          ? ChatUI(getWidth(), 4, Logic.data[index]["message"],
                              false, Colors.green, Colors.white)
                          : ChatUI(4, getWidth(), Logic.data[index]["message"],
                              true, Colors.white, Colors.black);
                    }),
              ),
            )),
            const Divider(
              height: 0,
              color: Colors.white,
              thickness: 1,
            ),
            AppBar(
              backgroundColor: Colors.white,
              elevation: 1,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                  size: 30,
                  color: Colors.black26,
                ),
              ),
              title: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  border: Border.all(
                      color: Colors.white,
                      // Set border color
                      width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Center(
                  child: TextField(
                    controller: message,
                    decoration: const InputDecoration(
                      hintText: "Enter"
                          " your message",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                      isDense: true,
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                    // ignore: void_checks
                    onPressed: () {
                      setState(() {
                        // ignore: unnecessary_null_comparison
                        if (message.text.isEmpty) return;
                        Logic.data
                            .insert(0, {"data": 1, "message": message.text});

                        Logic.data.insert(0,
                            {"data": 0, "message": "No Internet Connection"});

                        message.clear();
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
