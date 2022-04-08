import 'package:flutter/material.dart';
import 'package:login/Vendor/UI/sucessfull.dart';

import '../../pro.dart';

class loc extends StatefulWidget {
  const loc({Key? key}) : super(key: key);

  @override
  _locState createState() => _locState();
}

class _locState extends State<loc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_left_outlined,
                    size: 30,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Set Your Location',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'This  data  will  be  displayed  in  your  account                         profile  for  security.',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 10,
                      // fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 12, top: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      SizedBox(
                        width: 30,
                      ),
                      Image.network(
                        "https://user-images.githubusercontent.com/78641804/147932851-a504c2ef-a1d9-4835-acbb-d6eace512f3f.png",
                        height: 40,
                        width: 40,
                      ),
                      Text(
                        '      Your Location',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 10,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => pro_loc()),
                          );
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white))),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.grey.shade100)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 110, left: 110, top: 20, bottom: 20),
                          child: Column(
                            children: [
                              Text(
                                'Set Location',
                                style: TextStyle(
                                  fontFamily: 'Times New Roman',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const congo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.lightGreen))),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        )),
      ),
    );
  }
}
