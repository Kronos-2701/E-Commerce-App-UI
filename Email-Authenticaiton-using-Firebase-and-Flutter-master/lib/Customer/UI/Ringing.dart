import 'package:flutter/material.dart';

class callings extends StatefulWidget {
  const callings({Key? key}) : super(key: key);

  @override
  _callingsState createState() => _callingsState();
}

class _callingsState extends State<callings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
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
                'Trident Hotel',
                style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            Text(
              'Ringing  .  .  .',
              style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.black45),
            ),
            SizedBox(
              height: 190,
            ),
            Row(
              children: [
                SizedBox(width: 130),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.green.shade100,
                  child: const Icon(Icons.volume_up, color: Color(0xff43A047)),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  backgroundColor: Colors.red,
                  child: const Icon(
                    Icons.close,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
