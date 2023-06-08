import 'package:flutter/material.dart';
import 'package:aplikasi_reservasi_travel_bus/myticketpage/myticket.dart';
import 'package:aplikasi_reservasi_travel_bus/homepage/homepage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => homepage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyTicketPage()),
        );
        break;
      case 2:
        // No action needed as we're already on the ProfilePage
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  // Your profile image or icon can be added here
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Ridwan',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '08122221123',
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'ridwan@gmail.com',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Logic to be executed when the edit icon is pressed
                    // For example, display a dialog, navigate to an edit profile page, etc.
                  },
                  icon: Icon(Icons.edit),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey[400],
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Row(
                  children: [
                    Text('Personal Data'),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                onTap: () {
                  // Navigate to Personal Data page
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Row(
                  children: [
                    Text('Settings'),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                onTap: () {
                  // Navigate to Settings page
                },
              ),
            ),
           
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey[400],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.login_outlined, color: Colors.red),
                title: Row(
                  children: [
                    Text(
                      'Log Out',
                      style: TextStyle(color: Colors.red),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Colors.red),
                  ],
                ),
                onTap: () {
                  // Logic to be executed when the log out tile is pressed
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num),
            label: 'My Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
