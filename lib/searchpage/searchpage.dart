import 'package:aplikasi_reservasi_travel_bus/homepage/homepage.dart';
import 'package:aplikasi_reservasi_travel_bus/seatpage/seatpage.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

class SearchPage extends StatefulWidget {
  final String? selectedCity1;
  final String? selectedCity2;

  SearchPage({required this.selectedCity1, required this.selectedCity2});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> busList = [
    'Harapan Jaya',
    'Primajasa',
    'X-Trans',
    'Day Trans'
  ];
  final List<String> departList = [
    '08.30 WIB',
    '10.30 WIB',
    '12.30 WIB',
    '14.30 WIB'
  ];
  final List<String> kodeList = ['BK001', 'BK002', 'BK003', 'BK004'];
  final List<String> hargaList = [
    'Rp.80.000',
    'Rp.60.000',
    'Rp.70.000',
    'Rp.65.000'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 140,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        iconTheme:
            IconThemeData(color: Colors.black), // Mengatur warna ikon kembali
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage()),
                    );
                  },
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.2), // Menggunakan 20% lebar layar
                Text(
                  'Search result',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 1, 1),
                    fontFamily: "Montserrat",
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      widget.selectedCity1 ?? '',
                      style: TextStyle(
                        color: Color.fromARGB(255, 6, 6, 6),
                        fontFamily: "Montserrat",
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      widget.selectedCity1
                              ?.substring(widget.selectedCity1!.length - 3) ??
                          '',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Expanded(
                  child: CustomPaint(
                    painter: HorizontalDottedLinePainter(),
                  ),
                ),
                SizedBox(width: 16),
                Icon(
                  Icons.directions_bus,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 24,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: CustomPaint(
                    painter: HorizontalDottedLinePainter(),
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Text(
                      widget.selectedCity2 ?? '',
                      style: TextStyle(
                        color: Color.fromARGB(255, 6, 6, 6),
                        fontFamily: "Montserrat",
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      widget.selectedCity2
                              ?.substring(widget.selectedCity2!.length - 3) ??
                          '',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 245, 93, 11), // Warna gradien lainnya
              Color.fromARGB(255, 252, 190, 157), // War
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(20.0),
          itemCount: busList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            busList[index],
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 152, 152),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'images/ptpos2.png',
                            width: 45,
                            height: 45,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.selectedCity1?.substring(
                                    0, widget.selectedCity1!.length - 5) ??
                                '',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            widget.selectedCity1?.substring(
                                    widget.selectedCity1!.length - 3) ??
                                '',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'Depart',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            departList[index],
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.selectedCity2?.substring(
                                    0, widget.selectedCity2!.length - 5) ??
                                '',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            widget.selectedCity2?.substring(
                                    widget.selectedCity2!.length - 3) ??
                                '',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'Depart',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            kodeList[index],
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.grey,
                        size: 12,
                      ),
                      Expanded(
                        child: CustomPaint(
                          painter: HorizontalDottedLinePainter(),
                        ),
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.directions_bus,
                        color: Colors.grey,
                        size: 24,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CustomPaint(
                          painter: HorizontalDottedLinePainter(),
                        ),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.grey,
                        size: 12,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        hargaList[index],
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BusLayout()),
                          );
                        },
                        child: Text(
                          'View Detail',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class HorizontalDottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromARGB(255, 102, 101, 101)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    final double dashWidth = 4;
    final double dashSpace = 2;
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
