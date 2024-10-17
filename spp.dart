import 'package:flutter/material.dart';
import 'package:flutter_application_1/SPPDetail.dart';
import 'package:flutter_application_1/provider.dart';

class SPP extends StatefulWidget {
  const SPP({super.key});

  @override
  State<SPP> createState() => _SPPState();
}

class _SPPState extends State<SPP> {
  List<String> bulan = [
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember",
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPP"),
        backgroundColor: Color.fromRGBO(47, 65, 123, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            child: Column(
              children: [
                for (var i = 0; i < bulan.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: detailItem[i].status == 'Lunas'
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3))
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 15),
                                child: Container(
                                  child: Text(
                                    bulan[i],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: IconButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => SPPDetail(
                                                selectedIndex: i,
                                              ))),
                                  icon: Icon(
                                    Icons.arrow_right_alt_sharp,
                                    size: 40,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
