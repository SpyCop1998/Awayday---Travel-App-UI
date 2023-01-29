import 'package:awayday/widgets/backButtonTop.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  backButton(Colors.black45, () => {}),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Awayday.",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                        width: width / 1.5,
                        child: Text(
                          "We just need a few quick details to continue.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                              fontSize: 16),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: width / 4,
                          height: width / 4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/pice.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black38),
                        ),
                        Positioned(
                          left: 60,
                          top:60,
                          child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(color: Colors.white, width: 2)),
                              child: Center(
                                child: Icon(
                                  Icons.camera_alt_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Name",
                          hintStyle: TextStyle(color: Colors.black38),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Mobile Number",
                          hintStyle: TextStyle(color: Colors.black38),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.purple)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("I accept all the"),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Term & Conditions.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  colorBtn(context, Colors.purple, "Send OTP", Colors.white,
                      () => {}, true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
