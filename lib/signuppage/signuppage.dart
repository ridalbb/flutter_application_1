import 'package:flutter/material.dart';
import 'package:aplikasi_reservasi_travel_bus/loginpage/loginpage.dart';

class signuppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Color.fromARGB(255, 245, 93, 11),
            width: screenWidth,
            height: screenHeight * 0.15,
            child: Image(
              image: AssetImage("images/ptpos3.png"),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 245, 93, 11),
            width: screenWidth,
            height: screenHeight * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(screenWidth * 0.05),
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(screenWidth * 0.175),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(screenWidth * 0.05),
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: screenWidth * 0.5,
                        height: screenHeight * 0.05,
                        child: Text(
                          "Create an Account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 7, 0, 0),
                            fontSize: screenHeight * 0.025,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(screenWidth * 0.05),
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.05,
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.02),
                          child: TextField(
                            showCursor: true,
                            cursorColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.02,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                size: screenHeight * 0.025,
                              ),
                              hintText: "Nama",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(screenWidth * 0.05),
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.05,
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.02),
                          child: TextField(
                            showCursor: true,
                            cursorColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.02,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.email_rounded,
                                size: screenHeight * 0.025,
                              ),
                              hintText: "Email",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(screenWidth * 0.05),
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.05,
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.02),
                          child: TextField(
                            showCursor: true,
                            cursorColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.02,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                size: screenHeight * 0.025,
                              ),
                              hintText: "Password",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(screenWidth * 0.05),
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.05,
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.02),
                          child: TextField(
                            showCursor: true,
                            cursorColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.02,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                size: screenHeight * 0.025,
                              ),
                              hintText: "Reenter Password",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(screenWidth * 0.005),
                        width: screenWidth * 0.56,
                        height: screenHeight * 0.05,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 245, 93, 11),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.1),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return loginpage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: screenHeight * 0.025,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.7,
                        height: screenHeight * 0.03,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Text(
                          "Already have an account? Log in here",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 241, 167, 92),
                            fontSize: screenHeight * 0.015,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
