import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 93, 11),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Image.asset(
                'images/ptpos3.png',
                width: 50,
                height: 50,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Card(
                color: Colors.white,
                // News Card
                child: Container(
                  width: screenWidth * 0.9,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Latest News',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Card 1
                  child: Container(
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.2,
                    child: Center(
                      child: Text(
                        'Bandung',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Card 2
                  child: Container(
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.2,
                    child: Center(
                      child: Text(
                        'Jakarta',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Card 3
                  child: Container(
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.2,
                    child: Center(
                      child: Text(
                        'Bogor',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: screenWidth * 0.9,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                // Search Bar
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(
                    onTap: () {
                      // Add functionality for the search icon here
                      print('Search icon tapped');
                    },
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              // Promo Card
              child: Container(
                width: screenWidth * 0.9,
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Navbar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
