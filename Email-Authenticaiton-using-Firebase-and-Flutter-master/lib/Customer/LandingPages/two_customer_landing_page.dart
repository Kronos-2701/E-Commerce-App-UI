import 'package:flutter/material.dart';
import 'package:login/Customer/LandingPages/three_customer_landing_page.dart';
import 'package:login/enum.dart';

import '../../page_transition.dart';
//import 'package:page_transition/page_transition.dart';

// ignore: camel_case_types
class Two_Customer_LandingPage extends StatelessWidget {
  const Two_Customer_LandingPage({Key? key}) : super(key: key);

  @override
  // TODO: implement build
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF6964E5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color(0xFF6964E5),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 15,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                width: 30,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Three_Customer_LandingPage(),
                        ));
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/Asset11.png",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Serch for the perfect DJ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Hundreds of DJ’s to choose from with different categories that fits perfectly for the ocassion you want.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: IconButton(
                      onPressed: () {
                        // navigate to second_landing
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: Three_Customer_LandingPage(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.chevron_right,
                        size: 30,
                      )))
            ],
          ),
        ));
  }
}
