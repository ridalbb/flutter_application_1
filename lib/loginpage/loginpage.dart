import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:aplikasi_reservasi_travel_bus/signuppage/signuppage.dart';
import 'package:aplikasi_reservasi_travel_bus/homepage/homepage.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 134, 68),
              Color.fromARGB(255, 245, 93, 11),
            ],
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  "images/ptpos3.png",
                  width: size.width * 0.4,
                  height: size.height * 0.2,
                  alignment: Alignment.center,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: size.width * 0.8,
              height: size.height * 0.6,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(70),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 249, 247, 247),
                          contentPadding: const EdgeInsets.all(15),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Color(int.parse('0xffBDBDBD')),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          suffixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 179, 178, 178),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 249, 247, 247),
                          contentPadding: const EdgeInsets.all(15),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(int.parse('0xffBDBDBD')),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 179, 178, 178),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Container(
                    width: size.width * 0.6,
                    height: 20,
                    margin: EdgeInsets.all(1),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Lupa Password',
                              style: TextStyle(
                                color: Color.fromARGB(255, 51, 51, 51),
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => homepage()),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homepage()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 245, 93, 11),
                      ),
                      fixedSize: MaterialStateProperty.all(
                        Size(size.width * 0.6, 50.0),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Container(
                    width: size.width * 0.6,
                    height: 20,
                    margin: EdgeInsets.all(1),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Belum punya akun ? ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: 'Daftar disini',
                            style: TextStyle(
                              color: Color.fromARGB(255, 245, 93, 11),
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signuppage()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
