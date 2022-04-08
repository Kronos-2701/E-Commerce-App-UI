import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xFF77DD77),
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/images/vendor.png"),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "Messages",
                  style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Text(
                  "All Messages",
                  style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 10,
                      color: Colors.black87),
                ),
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        Column(children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
                elevation: 5,
                color: Colors.indigo.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, bottom: 12, right: 12),
                      child: Image.asset(
                        "assets/images/image20.3.png",
                        height: 50,
                        width: 70,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Minakshi",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "What is price of lehnga ?",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 8,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
                elevation: 5,
                color: Colors.indigo.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, bottom: 12, right: 12),
                      child: Image.asset(
                        "assets/images/image20.2.png",
                        height: 50,
                        width: 70,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Saloni",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "What is the price of booking a hall ?",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 8,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
                elevation: 5,
                color: Colors.indigo.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, bottom: 12, right: 12),
                      child: Image.asset(
                        "assets/images/image20.1.png",
                        height: 50,
                        width: 70,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Aditi ",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Can you show me some sample of dress?",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 8,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ]),
      ]),
      // bottomNavigationBar: BottomNavigationBar(
      //   //type: BottomNavigationBarType.fixed,
      //   currentIndex: 2,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       label: 'Messages',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Market',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //         color: Colors.green,
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
