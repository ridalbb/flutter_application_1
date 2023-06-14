import 'package:book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'book_my_seat package example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BusLayout(),
    );
  }
}

class BusLayout extends StatefulWidget {
  const BusLayout({Key? key}) : super(key: key);

  @override
  State<BusLayout> createState() => _BusLayoutState();
}

class _BusLayoutState extends State<BusLayout> {
  Set<SeatNumber> selectedSeats = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        iconTheme:
            IconThemeData(color: Colors.black), // Mengatur warna ikon kembali
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Bus Details',
              style: TextStyle(
                color: Color.fromARGB(255, 1, 1, 1),
                fontFamily: "Montserrat",
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      body: Container(
       width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 245, 93, 11), // Warna gradien lainnya
              Color.fromARGB(255, 252, 190, 157), // War
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                ),
                const Text("Front of bus is this side"),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  color:  Color.fromARGB(255, 255, 255, 255), 
                  width: 320,
                  child: Flexible(
                    child: SizedBox(
                      width: double.maxFinite,
                      height: 500,
                      child: SeatLayoutWidget(
                        onSeatStateChanged: (rowI, colI, seatState) {
                          if (seatState == SeatState.selected) {
                            selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
                          } else {
                            selectedSeats
                                .remove(SeatNumber(rowI: rowI, colI: colI));
                          }
                        },
                        stateModel: const SeatLayoutStateModel(
                          rows: 10,
                          cols: 7,
                          seatSvgSize: 45,
                          pathSelectedSeat: 'assets/design/seat_selected.svg',
                          pathDisabledSeat: 'assets/design/seat_disabled.svg',
                          pathSoldSeat: 'assets/design/seat_sold.svg',
                          pathUnSelectedSeat: 'assets/design/seat_unselected.svg',
                          currentSeatsState: [
                            [
                              SeatState.disabled,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.empty,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.sold,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.empty,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.empty,
                              SeatState.sold,
                              SeatState.sold,
                              SeatState.sold,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.empty,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.empty,
                              SeatState.unselected,
                              SeatState.sold,
                              SeatState.sold,
                            ],
                            [
                              SeatState.sold,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.empty,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.empty,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                            ],
                            [
                              SeatState.sold,
                              SeatState.sold,
                              SeatState.unselected,
                              SeatState.empty,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.unselected,
                            ],
                            [
                              SeatState.empty,
                              SeatState.empty,
                              SeatState.empty,
                              SeatState.empty,
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.sold,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.sold,
                              SeatState.sold,
                              SeatState.sold,
                              SeatState.unselected,
                              SeatState.unselected,
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.grey.shade700,
                          ),
                          const SizedBox(width: 2),
                          const Text('Disabled'),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.lightBlueAccent,
                          ),
                          const SizedBox(width: 2),
                          const Text('Sold'),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff0FFF50)),
                            ),
                          ),
                          const SizedBox(width: 2),
                          const Text('Available'),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            color: const Color(0xff0FFF50),
                          ),
                          const SizedBox(width: 2),
                          const Text('Selected by you'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
  width: 320,
  height: 50,
  child: ElevatedButton(
    onPressed: () {
      // Aksi yang akan dilakukan saat tombol ditekan
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Background color putih
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Warna teks hitam
    ),
    child: const Text('Lanjutkan'),
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

class SeatNumber {
  final int rowI;
  final int colI;

  const SeatNumber({required this.rowI, required this.colI});

  @override
  bool operator ==(Object other) {
    return rowI == (other as SeatNumber).rowI && colI == other.colI;
  }

  @override
  int get hashCode => rowI.hashCode;

  @override
  String toString() {
    return '[$rowI][$colI]';
  }
}
