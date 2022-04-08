import 'dart:io';

import 'package:login/Vendor/UI/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../pro.dart';

class upload extends StatefulWidget {
  const upload({Key? key}) : super(key: key);

  @override
  _uploadState createState() => _uploadState();
}

class _uploadState extends State<upload> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e ');
    }
  }

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
                      'Upload Your Profile Photo',
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
              //Image show widget
              image != null
                  ? Image.file(
                      image!,
                      width: 250,
                      height: 250,
                    )
                  : Column(children: [
                      ElevatedButton(
                          onPressed: () => pickImage(
                                ImageSource.gallery,
                              ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.white))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 120, left: 120, top: 20, bottom: 20),
                            child: Column(
                              children: [
                                Image.network(
                                  "https://user-images.githubusercontent.com/78641804/147932198-2a5ba865-35f2-4410-b27b-775753a03cc4.png",
                                  height: 60,
                                  width: 60,
                                ),
                                Text(
                                  'From Gallery',
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
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () => pickImage(ImageSource.camera),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.white))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 130, left: 130, top: 20, bottom: 20),
                            child: Column(
                              children: [
                                Image.network(
                                  "https://user-images.githubusercontent.com/78641804/147932220-63adf3d5-2014-4b0d-b9ce-cf6425d8db64.png",
                                  height: 60,
                                  width: 60,
                                ),
                                Text(
                                  'Take Photo',
                                  style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ))
                    ]),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pro_loc()),
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
          ),
        ),
      ),
    );
  }
}
