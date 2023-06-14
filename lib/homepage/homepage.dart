import 'package:aplikasi_reservasi_travel_bus/myticketpage/myticket.dart';
import 'package:aplikasi_reservasi_travel_bus/profilepage/profile.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_reservasi_travel_bus/searchpage/searchpage.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:intl/intl.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool isOneWaySelected = true;
  bool isRoundTripSelected = false;

  int _selectedIndex = 0;

  late DateTime selectedDate = DateTime.now();
  late TextEditingController dateController;

  late String? selectedCity1 = '';
  late String? selectedCity2 = '';

  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  TextEditingController dateController1 = TextEditingController();
  TextEditingController dateController2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController = TextEditingController();
  }

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemIndex(int index) {
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
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
    }
  }

  List<String> popularCities = [
    "Jakarta, JKT",
    "Bandung, BDO",
    "Surabaya, SBY",
    "Yogyakarta, DIY",
    "Denpasar, DPS",
    "Medan, MDN",
    "Semarang, SRG",
    "Makassar, MAA",
    "Palembang, PLM",
    "Malang,",
  ];

  List<String> cityAcronym = [
    "JKT",
    "BDO",
    "SBY",
    "DIY",
    "DPS",
    "MDN",
    "SRG",
    "MAA",
    "PLM",
    "MLG",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 245, 93, 11),
                            Color.fromARGB(255, 252, 190, 157),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Container(
                        width: constraints.maxWidth * 1, //
                        height: constraints.maxHeight *
                            0.75, // 60% dari tinggi layar
                        child: ListView(
                          children: [
                            // Konten lainnya
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: constraints.maxHeight * 0.08, // 8% dari tinggi layar
                    left: constraints.maxWidth * 0.04, // 4% dari lebar layar
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Ridwan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.03 *
                                constraints.maxHeight, // Ukuran font responsif
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'book your next bus!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.03 *
                                constraints.maxHeight, // Ukuran font responsif
                          ),
                        ),
                        SizedBox(
                            height: 0.04 *
                                constraints.maxHeight), // Jarak responsif
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Aksi ketika tombol "One way" ditekan
                                setState(() {
                                  isOneWaySelected = true;
                                  isRoundTripSelected = false;
                                });
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (states) {
                                  if (isOneWaySelected &&
                                      !isRoundTripSelected) {
                                    return Color.fromARGB(255, 255, 255,
                                        255); // Warna biru saat tombol "One way" ditekan
                                  } else {
                                    return Color.fromARGB(255, 250, 130,
                                        65); // Warna abu-abu saat tombol "Round trip" ditekan
                                  }
                                }),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.double_arrow,
                                    size: 0.028 *
                                        constraints
                                            .maxHeight, // Ukuran icon responsif
                                    color: isOneWaySelected &&
                                            !isRoundTripSelected
                                        ? Color.fromARGB(255, 250, 130, 65)
                                        : Color.fromARGB(252, 255, 183, 120),
                                  ),
                                  SizedBox(
                                      width: 0.008 *
                                          constraints
                                              .maxWidth), // Jarak responsif
                                  Text(
                                    'One way',
                                    style: TextStyle(
                                      color: isOneWaySelected &&
                                              !isRoundTripSelected
                                          ? Color.fromARGB(255, 250, 130, 65)
                                          : Color.fromARGB(252, 255, 183, 120),
                                      fontSize: 0.020 *
                                          constraints
                                              .maxHeight, // Ukuran font responsif
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                width: 0.04 *
                                    constraints.maxWidth), // Jarak responsif
                            ElevatedButton(
                              onPressed: () {
                                // Aksi ketika tombol "Round trip" ditekan
                                setState(() {
                                  isOneWaySelected = false;
                                  isRoundTripSelected = true;
                                });
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (states) {
                                  if (!isOneWaySelected &&
                                      isRoundTripSelected) {
                                    return Color.fromARGB(255, 255, 255,
                                        255); // Warna biru saat tombol "Round trip" ditekan
                                  } else {
                                    return Color.fromARGB(255, 250, 130,
                                        65); // Warna abu-abu saat tombol "One way" ditekan
                                  }
                                }),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.repeat,
                                    size: 0.028 *
                                        constraints
                                            .maxHeight, // Ukuran icon responsif
                                    color: !isOneWaySelected &&
                                            isRoundTripSelected
                                        ? Color.fromARGB(255, 250, 130, 65)
                                        : Color.fromARGB(252, 255, 183, 120),
                                  ),
                                  SizedBox(
                                      width: 0.008 *
                                          constraints
                                              .maxWidth), // Jarak responsif
                                  Text(
                                    'Round trip',
                                    style: TextStyle(
                                      color: !isOneWaySelected &&
                                              isRoundTripSelected
                                          ? Color.fromARGB(255, 250, 130, 65)
                                          : Color.fromARGB(252, 255, 183, 120),
                                      fontSize: 0.020 *
                                          constraints
                                              .maxHeight, // Ukuran font responsif
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            top: 40,
            right: 16,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromARGB(80, 255, 255, 255),
                  width: 1,
                ),
              ),
              constraints: BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Icon(
                Icons.notification_add_outlined,
                 color: Color.fromARGB(80, 255, 255, 255),
                size: 30,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Center(
                  child: Positioned(
                    top: MediaQuery.of(context).size.height * 0.32,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 247, 246),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Icon(
                                        Icons.bus_alert,
                                        color: const Color.fromARGB(
                                            255, 188, 188, 188),
                                      ),
                                    ),
                                    Text(
                                      "|",
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 216, 216, 216),
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Container(
                                        height: 45.0,
                                        child: DropdownSearch<String>(
                                          mode: Mode.DIALOG,
                                          showSelectedItem: true,
                                          items: popularCities,
                                          onChanged: (newValue) {
                                            setState(() {
                                              selectedCity1 = newValue;
                                            });
                                          },
                                          hint: "Pilih Kota Asal",
                                          popupTitle: Container(
                                            constraints: BoxConstraints(
                                                maxWidth: 300, maxHeight: 60),
                                            padding: EdgeInsets.all(14.0),
                                            child: Text(
                                              "Kota Asal",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Inter",
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                            ),
                                          ),
                                          popupShape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          popupItemBuilder:
                                              (context, item, isSelected) {
                                            return Container(
                                              height: 40,
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 230, 230, 230),
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                item,
                                                textAlign: TextAlign.left,
                                              ),
                                            );
                                          },
                                          dropdownButtonBuilder: (_) =>
                                              SizedBox.shrink(),
                                          dropdownSearchDecoration:
                                              InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.only(left: 10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Icon(
                                        Icons.bus_alert,
                                        color: const Color.fromARGB(
                                            255, 188, 188, 188),
                                      ),
                                    ),
                                    Text(
                                      "|",
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 216, 216, 216),
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Container(
                                        height: 45.0,
                                        child: DropdownSearch<String>(
                                          mode: Mode.DIALOG,
                                          showSelectedItem: true,
                                          items: popularCities,
                                          onChanged: (newValue) {
                                            setState(() {
                                              selectedCity2 = newValue;
                                            });
                                          },
                                          hint: "Pilih Kota Tujuan",
                                          popupTitle: Container(
                                            padding: EdgeInsets.all(14.0),
                                            child: Text(
                                              "Kota Tujuan",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Inter",
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                            ),
                                          ),
                                          popupShape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          popupItemBuilder:
                                              (context, item, isSelected) {
                                            return Container(
                                              height: 40,
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 230, 230, 230),
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                item,
                                                textAlign: TextAlign.left,
                                              ),
                                            );
                                          },
                                          dropdownButtonBuilder: (_) =>
                                              SizedBox.shrink(),
                                          dropdownSearchDecoration:
                                              InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.only(left: 10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Icon(
                                          Icons.date_range,
                                          color: const Color.fromARGB(
                                              255, 188, 188, 188),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Tanggal Berangkat",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showDatePicker(
                                                  context: context,
                                                  initialDate: selectedDate1,
                                                  firstDate: DateTime(2023),
                                                  lastDate: DateTime(2024),
                                                ).then((selectedDate) {
                                                  if (selectedDate != null) {
                                                    setState(() {
                                                      this.selectedDate1 =
                                                          selectedDate;
                                                      dateController1
                                                          .text = DateFormat(
                                                              'yyyy-MM-dd')
                                                          .format(selectedDate);
                                                    });
                                                  }
                                                });
                                              },
                                              child: IgnorePointer(
                                                child: TextFormField(
                                                  controller: dateController1,
                                                  decoration: InputDecoration(
                                                    hintText: 'Select Date',
                                                    border: InputBorder.none,
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                            left: 8),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Visibility(
                                        visible: isRoundTripSelected,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Icon(
                                            Icons.date_range,
                                            color: const Color.fromARGB(
                                                255, 188, 188, 188),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Visibility(
                                          visible: isRoundTripSelected,
                                          maintainSize: false,
                                          maintainState: true,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  "Tanggal Pulang",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  showDatePicker(
                                                    context: context,
                                                    initialDate: selectedDate2,
                                                    firstDate: DateTime(2023),
                                                    lastDate: DateTime(2024),
                                                  ).then((selectedDate) {
                                                    if (selectedDate != null) {
                                                      setState(() {
                                                        this.selectedDate2 =
                                                            selectedDate;
                                                        dateController2
                                                            .text = DateFormat(
                                                                'yyyy-MM-dd')
                                                            .format(
                                                                selectedDate);
                                                      });
                                                    }
                                                  });
                                                },
                                                child: IgnorePointer(
                                                  child: TextFormField(
                                                    enabled:
                                                        isRoundTripSelected,
                                                    controller: dateController2,
                                                    decoration: InputDecoration(
                                                      hintText: 'Select Date',
                                                      border: InputBorder.none,
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              left: 8),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SearchPage(
                                          selectedCity1: selectedCity1,
                                          selectedCity2: selectedCity2,
                                        ),
                                      ),
                                    );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Color.fromARGB(255, 250, 130, 65),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: Text('SEARCH BUS'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fromRect(
  rect: Rect.fromLTWH(
    25,
    MediaQuery.of(context).size.height * 0.75,
    MediaQuery.of(context).size.width - 50,
    30,
  ),
  child: Text(
    'Popular Routes',
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  ),
),
Positioned.fromRect(
  rect: Rect.fromLTWH(
    MediaQuery.of(context).size.width - 120,
    MediaQuery.of(context).size.height * 0.75,
    95,
    30,
  ),
  child: Text(
    'Lihat semua',
    style: TextStyle(
      fontSize: 12,
      color: Colors.grey,
    ),
  ),
),
Positioned.fromRect(
  rect: Rect.fromLTWH(
    20,
    MediaQuery.of(context).size.height * 0.78,
    MediaQuery.of(context).size.width - 40,
    90,
  ),
  child: Container(
    height: 90,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3, // Jumlah list view yang ingin ditampilkan
      itemBuilder: (BuildContext context, int index) {
        // Data untuk setiap list view
        List<String> images = [
          'images/bandung.jpg',
          'images/malang.jpg',
          'images/jogjakarta.jpg',
        ];
        List<String> destinations = [
          'Jakarta to Bandung',
          'Surabaya to Malang',
          'Jakarta to Jogjakarta',
        ];
        List<String> prices = [
          'Rp. 70.000',
          'Rp. 90.000',
          'Rp. 80.000',
        ];
        List<double> ratings = [
          4.6,
          4.4,
          4.3,
        ];

        return Container(
          width: 260,
          height: 30,
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 246, 245, 245),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 75,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 15,
                child: Text(
                  destinations[index],
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 50,
                child: Text(
                  'From',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 65,
                child: Text(
                  prices[index],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Positioned(
                left: 205,
                top: 65,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      ratings[index].toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ),
  ),
),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemIndex,
        selectedItemColor: Color.fromARGB(255, 245, 93, 11),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num),
            label: 'Tiket',
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
