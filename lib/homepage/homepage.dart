import 'package:flutter/material.dart';
import 'package:aplikasi_reservasi_travel_bus/searchpage/searchpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  child: Column(
                    children: [
                      Image.asset(
                        'images/ptpos.png',
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.25 * 0.75, // Adjust the aspect ratio as needed
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Bandung',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Card 2
                  child: Column(
                    children: [
                      Image.asset(
                        'images/ptpos2.png',
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.25 * 0.75, // Adjust the aspect ratio as needed
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Jakarta',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Card 3
                  child: Column(
                    children: [
                      Image.asset(
                        'images/ptpos3.png',
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.25 * 0.75, // Adjust the aspect ratio as needed
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Bogor',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: screenWidth * 0.9,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton.icon(
                // Search Button
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return searchpage();
                      },
                    ),
                  );
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black, // Set the desired icon color here
                ),
                label: Text(
                  'Cari',
                  style: TextStyle(
                    color: Colors.black, // Set the desired text color here
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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