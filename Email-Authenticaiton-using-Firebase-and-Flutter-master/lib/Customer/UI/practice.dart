import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 50,
            width: 100,
            margin: const EdgeInsets.all(10),
            color: Colors.orange,
            child: const Text('Coders'),
          ),
          Container(
            height: 50,
            width: 100,
            margin: const EdgeInsets.all(10),
            color: Colors.orange,
            child: const Text('Hackers'),
          ),
          Container(
            height: 50,
            width: 100,
            margin: const EdgeInsets.all(10),
            color: Colors.orange,
            child: const Text('Hey'),
          ),
        ],
      ),
    );
  }
}
