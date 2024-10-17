import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider.dart';

class SPPDetail extends StatefulWidget {
  final int selectedIndex;

  const SPPDetail({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  State<SPPDetail> createState() => _SPPDetailState();
}

class _SPPDetailState extends State<SPPDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPP"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            final item = detailItem[widget.selectedIndex];
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 120,
                                  child: Text(
                                    "Nama",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Container(
                                  width: 20,
                                  child: Text(
                                    ":",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Text(
                                item.nama,
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 120,
                                  child: Text(
                                    "No.Induk",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Container(
                                  width: 20,
                                  child: Text(
                                    ":",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Text(
                                item.noinduk,
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 120,
                                  child: Text(
                                    "Kelas",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Container(
                                  width: 20,
                                  child: Text(
                                    ":",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Text(
                                item.kelas,
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 120,
                                  child: Text(
                                    "Alamat",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Container(
                                  width: 20,
                                  child: Text(
                                    ":",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Text(
                                item.alamat,
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 120,
                                  child: Text(
                                    "SPP Oktober",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Container(
                                  width: 20,
                                  child: Text(
                                    ":",
                                    style: TextStyle(fontSize: 20),
                                  )),
                              Text(
                                item.status,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            );
          }),
    );
  }
}
