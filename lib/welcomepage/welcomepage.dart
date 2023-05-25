import 'package:flutter/material.dart';
import 'package:aplikasi_reservasi_travel_bus/signuppage/signuppage.dart';

class welcomepage extends StatelessWidget {
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
            color: Color.fromARGB(255, 253, 253, 253),
            width: screenWidth,
            height: screenHeight * 0.22,
          ),
          Container(
            color: Color.fromARGB(255, 253, 253, 253),
            width: screenWidth * 0.85,
            height: screenHeight * 0.24,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage("images/ptpos2.png"),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 255, 254, 254),
            width: screenWidth * 0.625,
            height: screenHeight * 0.1,
          ),
          Container(
            margin: EdgeInsets.all(screenWidth * 0.025),
            width: screenWidth * 0.625,
            height: screenHeight * 0.06,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 245, 93, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(screenHeight * 0.03),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return signuppage();
                    },
                  ),
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: screenHeight * 0.03,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
