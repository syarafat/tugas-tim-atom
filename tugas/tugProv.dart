import 'package:flutter/material.dart';

class TugasProvider extends ChangeNotifier {
  List<Widget> list1 = [
    Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white, // Warna latar belakang putih
        borderRadius: BorderRadius.circular(10.0), // Border radius 10
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Warna bayangan abu-abu
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Offset bayangan
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: Text("Gambar")),
                    Expanded(flex: 5, child: Text("Algoritma 22/23")),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "100 poin",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 10),
                child: Text(
                  "Tugas 5 - Algoritma Pemrograman",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "Jatuh tempo 30 Juni 2023 Pukul 23.59",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  List<Widget> list2 = [];

  List<Widget> list3 = [];
}
