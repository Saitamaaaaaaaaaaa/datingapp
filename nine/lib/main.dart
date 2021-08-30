import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'loginPage',
    home: loginPage(),
  ));
}

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050709),
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 30,
        backgroundColor: Color(0xff050709),
        title: const Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "You have been missed.",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Color(0xff262626),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Color(0xff262626),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "password",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  loginButton(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  googl(),
                  SizedBox(
                    height: 180,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class loginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Color(0xffFBBA1A),
      height: 50.0,
      minWidth: 500.0,
      child: Text(
        "Login",
        style: TextStyle(
          color: Color(0xff050709),
        ),
      ),
      onPressed: () {},
    );
  }
}

class googl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Color(0xff518DF9),
      height: 50.0,
      minWidth: 500.0,
      child: Text(
        "Connect with Google",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }
}
