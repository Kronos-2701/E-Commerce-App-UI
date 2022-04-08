import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reviews_Page extends StatefulWidget {
  const Reviews_Page({Key? key}) : super(key: key);

  @override
  _Reviews_PageState createState() => _Reviews_PageState();
}

class _Reviews_PageState extends State<Reviews_Page> {
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
                  "Reviews",
                  style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Text(
                  "All Outlets",
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Card(
                    elevation: 5,
                    color: Colors.indigo.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: const [
                          Text("Filter reviews"),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(Icons.search),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 60,
                child: Card(
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/icon/wrapper.png',
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                  onTap: () {}),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.7),
                    blurRadius: 7,
                    offset: Offset(00, 5.00),
                  ),
                ]),
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
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Wedding Dresses",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, top: 10),
                          child: Text(
                            "12 new reviews from",
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 8,
                                color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, top: 8),
                          child: Text(
                            "wedding dresses",
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 8,
                                fontWeight: FontWeight.w100,
                                color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 23, top: 12, bottom: 12, right: 12),
                      child: Image.asset("assets/images/image20.png"),
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
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "DJ & Music",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, top: 10),
                          child: Text(
                            "12 new reviews from",
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 8,
                                color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, top: 8),
                          child: Text(
                            "wedding dresses",
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 8,
                                fontWeight: FontWeight.w100,
                                color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 23, top: 12, bottom: 12, right: 12),
                      child: Image.asset("assets/images/image21.png"),
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
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Hotels",
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, top: 10),
                          child: Text(
                            "12 new reviews from",
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 8,
                                color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8, top: 8),
                          child: Text(
                            "wedding dresses",
                            style: TextStyle(
                                fontFamily: 'Times New Roman',
                                fontSize: 8,
                                fontWeight: FontWeight.w100,
                                color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 23, top: 12, bottom: 12, right: 12),
                      child: Image.asset("assets/images/image22.png"),
                    ),
                  ],
                )),
          ),
        ]),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.green,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
