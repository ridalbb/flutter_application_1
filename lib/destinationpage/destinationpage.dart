import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: destinationpage(),
  ));
}

class destinationpage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<destinationpage> {
  List<String> popularCities = [
    'Jakarta',
    'Surabaya',
    'Bandung',
    'Yogyakarta',
    'Medan',
    'Semarang',
    'Makassar',
    'Palembang',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: ListView.builder(
        itemCount: popularCities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(popularCities[index]),
            onTap: () {
              // Tombol kembali (back button) ditekan
              Navigator.pop(context, popularCities[index]);
            },
          );
        },
      ),
    );
  }
}
