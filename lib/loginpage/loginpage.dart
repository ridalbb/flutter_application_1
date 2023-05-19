import 'package:flutter/material.dart';
import 'package:aplikasi_reservasi_travel_bus/loginpage/loginpage.dart';

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: Color.fromARGB(255, 245, 93, 11),
          width: 400,
          height: 100,
          child: Image(
            image: AssetImage("images/ptpos3.png"),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 245, 93, 11),
          width: 400,
          height: 681,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  width: 350,
                  height: 600,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(70)),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 250,
                        height: 50,
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 7, 0, 0),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 400,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            showCursor: true,
                            cursorColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                size: 25,
                              ),
                              hintText: "Email",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 400,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            showCursor: true,
                            cursorColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                size: 25,
                              ),
                              hintText: "Password",
                            ),
                          ),
                        ),
                      ),
                  
                      Container(
                        margin: const EdgeInsets.all(1),
                        width: 280,
                        height: 50,
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
                                builder: (context) {
                                  return loginpage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: 300,
                        height: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                        
                         child: Text(
                            "Don’t have an account? Register here",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 241, 167, 92),
                              fontSize: 15,
                            ),
                          ),
                          
                      )
                    ],
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}
