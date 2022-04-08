import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'home.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  _orderState createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            CircleAvatar(
              radius: 90,
              backgroundColor: Color(0xff77DD77),
              child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 80,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(90)),
                      child: Image.asset("assets/images/image17.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 15),
              child: Text(
                'Thank You!',
                style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                'Order Completed',
                style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            Text(
              'Please rate your last Driver',
              style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black45),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(width: 110),
            RatingBar.builder(
              itemBuilder: (context, _) => Icon(
                Icons.star_rounded,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: '   Leave feedback',
                    prefixIcon:
                        Icon(Icons.edit, color: Color(0xff77DD77), size: 30),
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    )),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_Page()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 80.0, right: 80.0, top: 20.0, bottom: 20.0),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff77DD77)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Color(0xff77DD77)))),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_Page()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 22.0, right: 22.0, top: 20.0, bottom: 20.0),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontFamily: 'Times New Roman',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff77DD77),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Colors.white))),
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
