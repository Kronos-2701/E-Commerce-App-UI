import 'package:login/Vendor/UI/dashboard.dart';

import 'package:flutter/material.dart';
import 'package:login/Vendor/UI/main_home.dart';

class congo extends StatefulWidget {
  const congo({Key? key}) : super(key: key);

  @override
  _congoState createState() => _congoState();
}

class _congoState extends State<congo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SizedBox(
            height: 230,
          ),
          Image.network(
              'https://user-images.githubusercontent.com/78641804/147932798-6c07983c-6b90-461d-97ac-ea29f6cb3a40.png',
              height: 200,
              width: 200),
          SizedBox(
            height: 20,
          ),
          Text(
            'Congrats!',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              fontSize: 22,
              color: Colors.green.shade500,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Your Profile Is Ready To Use',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const main_Home()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
              child: Text(
                'Dashboard',
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
      ),
    );
  }
}
