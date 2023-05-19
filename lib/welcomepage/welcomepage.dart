import 'package:flutter/material.dart';
import 'package:aplikasi_reservasi_travel_bus/signuppage/signuppage.dart';

class welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 253, 253, 253),
            width: 400,
            height: 220,
          ),
          Container(
              color: Color.fromARGB(255, 253, 253, 253),
              width: 340,
              height: 240,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("images/ptpos2.png"),
              )),
          Container(
            color: Color.fromARGB(255, 255, 254, 254),
            width: 250,
            height: 100,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 250,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 245, 93, 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return signuppage();
                    },
                  ),
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
