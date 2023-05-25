import 'package:flutter/material.dart';

class searchpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Material(// Set the background color to orange
        child: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
            color: Color.fromARGB(255, 245, 93, 11),
            width: screenWidth,
            height: screenHeight * 0.15,
            child: Image(
              image: AssetImage("images/ptpos3.png"),
            ),
          ),
                SizedBox(height: 20),
                DropdownButton<String>(
                  hint: Text('From City'),
                  items: [
                    DropdownMenuItem<String>(
                      value: 'City 1',
                      child: Text('City 1'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'City 2',
                      child: Text('City 2'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'City 3',
                      child: Text('City 3'),
                    ),
                  ],
                  onChanged: (value) {
                    // Handle selected value
                  },
                ),
                SizedBox(height: 10),
                DropdownButton<String>(
                  hint: Text('To City'),
                  items: [
                    DropdownMenuItem<String>(
                      value: 'City 1',
                      child: Text('City 1'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'City 2',
                      child: Text('City 2'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'City 3',
                      child: Text('City 3'),
                    ),
                  ],
                  onChanged: (value) {
                    // Handle selected value
                  },
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          hintText: 'Select Date',
                        ),
                      ),
                    ),
                    DropdownButton<String>(
                      hint: Text('Number of People'),
                      items: [
                        DropdownMenuItem<String>(
                          value: '1',
                          child: Text('1'),
                        ),
                        DropdownMenuItem<String>(
                          value: '2',
                          child: Text('2'),
                        ),
                        DropdownMenuItem<String>(
                          value: '3',
                          child: Text('3'),
                        ),
                      ],
                      onChanged: (value) {
                        // Handle selected value
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Perform search based on filters
                      // You can implement your search logic here
                    },
                    child: Text('Cari'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 245, 93, 11), // Set the button background color to orange
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Promo',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}