import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Vendor/UI/product.dart';

// ignore: camel_case_types
class Photo_Page extends StatefulWidget {
  const Photo_Page({Key? key}) : super(key: key);

  @override
  _Photo_PageState createState() => _Photo_PageState();
}

// ignore: camel_case_types
class _Photo_PageState extends State<Photo_Page> {
  // ignore: non_constant_identifier_names
  Widget Card(String imageLink) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        // height: 230,
        width: MediaQuery.of(context).size.width / 2.8,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              const BoxShadow(
                  color: Colors.black54,
                  blurRadius: 20.0,
                  offset: const Offset(
                    5.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ))
            ]),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Image.asset(
                imageLink,
                height: 150,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Add More",
                      style: TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const page()),
                          );
                        },
                        child: const Icon(Icons.add))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

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
                    "Photos",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                  Text(
                    "All Photos",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ],
              )
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/setting_page");
              },
            ),
          ],
        ),
        body: GridView.count(
            padding: const EdgeInsets.all(15),
            childAspectRatio: 10 / 14,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
            children: [
              Card("assets/images/image20.png"),
              Card("assets/images/image21.png"),
              Card("assets/images/image22.png"),
            ]));
  }
}
