// import 'package:ecommerce/Logic/user_data.dart';
// import 'package:ecommerce/Static/toast.dart';
// import 'package:ecommerce/Static/user_type.dart';
// import 'package:email_auth/email_auth.dart';
//import 'package:alecado/Customer/UI/home_module.dart';
//import 'package:alecado/Vendor/UI/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login/Customer/UI/home_module.dart';
import 'package:login/Vendor/UI/Profile.dart';
// import 'package:string_validator/string_validator.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  //var emailAuth = EmailAuth(sessionName: "E-commerce App");

  //final userData = UserData();

  bool usernameIsEmpty = false;
  bool passwordIsEmpty = false;

  int index = 0;
  bool isObscure = true;

  Color colorCustomer = Colors.green;
  Color colorVendor = Colors.white;

  bool isCustomerSelected = true;
  bool isVendorSelected = false;

  // Future<bool> sendNumberOTP() async {
  //   if (isNumeric(usernameController.text)) {
  //     final response = await http.get(Uri.parse(
  //         'http://10.0.2.2:3000/login?phone_number=${usernameController.text}&channel=sms'));
  //     return response.body == '' ? true : false;
  //   }

  //   return false;
  // }

  // Future<bool> sentEmailOTP() async {
  //   var res = await emailAuth.sendOtp(recipientMail: usernameController.text);
  //   return res ? true : false;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  "Enter your email and password and\nstart selling or buying",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                            elevation: 0,
                            primary: colorCustomer,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          onPressed: () {
                            setState(() {
                              colorVendor = Colors.white;
                              colorCustomer = Colors.green;
                              isVendorSelected = false;
                              isCustomerSelected = true;
                              // UserType.isUserCustomer = true;
                            });
                          },
                          child: Text(
                            "Customer",
                            style: isCustomerSelected
                                ? const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  )
                                : const TextStyle(
                                    color: Colors.black,
                                  ),
                          )),
                    ),
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              splashFactory: NoSplash.splashFactory,
                              elevation: 0,
                              primary: colorVendor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            onPressed: () {
                              setState(() {
                                colorCustomer = Colors.white;
                                colorVendor = Colors.green;
                                isVendorSelected = true;
                                isCustomerSelected = false;
                                // UserType.isUserCustomer = false;
                              });
                            },
                            child: Text(
                              "Vendor",
                              style: isVendorSelected
                                  ? const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    )
                                  : const TextStyle(
                                      color: Colors.black,
                                    ),
                            ))),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: usernameController,
                //This will obscure text dynamically
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.start,
                decoration: const InputDecoration(
                  hintText: "Email or Phone",
                  hintStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              usernameIsEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        "This field should not be empty",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    )
                  : Container(),
              const SizedBox(
                height: 20,
              ),
              TextField(
                  controller: passwordController,
                  obscureText: isObscure,
                  //This will obscure text dynamically
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      color: Colors.black54,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          isObscure = isObscure ? false : true;
                        });
                      },
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  )),
              passwordIsEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        "This field should not be empty",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    )
                  : Container(),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () async {
                    isCustomerSelected == false
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const upload()),
                          )
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const home_module()),
                          );
                    // setState(() {
                    //   usernameIsEmpty =
                    //       usernameController.text.isEmpty ? true : false;
                    //   passwordIsEmpty =
                    //       passwordController.text.isEmpty ? true : false;
                    // });

                    // if (!usernameIsEmpty && !passwordIsEmpty) {
                    //   isEmail(usernameController.text)
                    //       ? await sentEmailOTP()
                    //           ? Toast.ShowToast("OTP Sent")
                    //           : Toast.ShowToast("Error")
                    //       : await sendNumberOTP()
                    //           ? Toast.ShowToast("OTP Sent")
                    //           : Toast.ShowToast("Error");
                    //   UserData.saveData(
                    //       usernameController.text, passwordController.text);
                    //   Navigator.pushNamed(context, '/auth_page');
                    // }
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or continue With",
                          style: TextStyle(color: Colors.black87))),
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icon/facebook.png",
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      const Text("Continue With Facebook"),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(
                      color: Colors.black87,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icon/google.png",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "Continue With Google",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  style: const TextStyle(fontSize: 15, color: Colors.black87),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Sign in',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
