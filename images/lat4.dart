import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:provider/provider.dart';

class NamaSitus {
  String nama;
  String situs;
  NamaSitus({required this.nama, required this.situs});
}

class ListNamaSitusModel extends ChangeNotifier {
  String selectedCountry = "Indonesia";

  List<NamaSitus> listNamaSitusModel = <NamaSitus>[];

  ListNamaSitusModel({required this.listNamaSitusModel}) {
    fetchData();
  }

  void setSelectedCountry(String country) {
    selectedCountry = country;
    fetchData();
  }

  void setFromJson(List<dynamic> json) {
    listNamaSitusModel.clear();
    for (var val in json) {
      var nama = val["name"];
      var situs = val["web_pages"][0];
      listNamaSitusModel.add(NamaSitus(nama: nama, situs: situs));
      notifyListeners();
    }
  }

  void fetchData() async {
    String url =
        "http://universities.hipolabs.com/search?country=$selectedCountry";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      setFromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal load');
    }
  }
}

void main() {
  runApp(
    ChangeNotifierProvider<ListNamaSitusModel>(
      create: (context) => ListNamaSitusModel(listNamaSitusModel: []),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<DropdownMenuItem<String>> countries = [
    const DropdownMenuItem<String>(
      value: "Indonesia",
      child: Text("Indonesia"),
    ),
    const DropdownMenuItem<String>(
      value: "Singapore",
      child: Text("Singapore"),
    ),
    const DropdownMenuItem<String>(
      value: "Malaysia",
      child: Text("Malaysia"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 4',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan 4'),
        ),
        body: Column(
          children: [
            Consumer<ListNamaSitusModel>(
              builder: (context, model, child) {
                return DropdownButton<String>(
                  value: model.selectedCountry,
                  onChanged: (String? newValue) {
                    model.setSelectedCountry(newValue!);
                  },
                  items: countries,
                );
              },
            ),
            Expanded(
              child: Consumer<ListNamaSitusModel>(
                builder: (context, model, child) {
                  if (model.listNamaSitusModel.isNotEmpty) {
                    return ListView.builder(
                      itemCount: model.listNamaSitusModel.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(border: Border.all()),
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                model.listNamaSitusModel[index].nama,
                              ),
                              Text(
                                model.listNamaSitusModel[index].situs,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
