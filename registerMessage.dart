import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;

class Akbar extends StatefulWidget {
  const Akbar({Key? key}) : super(key: key);

  @override
  State<Akbar> createState() => _AkbarState();
}

class _AkbarState extends State<Akbar> {
  String ijazahFileName = "No File Choosen";
  String raportFileName = "No File Choosen";
  String kartuKeluargaFileName = "No File Choosen";
  String aktaKelahiranFileName = "No File Choosen";
  String transkripNilaiFileName = "No File Choosen";
  String pasFotoFileName = "No File Choosen";

  void openFile(String fieldName) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      PlatformFile file = result.files.first;
      setState(() {
        if (fieldName == 'ijazah') {
          ijazahFileName = file.name.toString();
        } else if (fieldName == 'raport') {
          raportFileName = file.name.toString();
        } else if (fieldName == 'kartuKeluarga') {
          kartuKeluargaFileName = file.name.toString();
        } else if (fieldName == 'aktaKelahiran') {
          aktaKelahiranFileName = file.name.toString();
        } else if (fieldName == 'transkripNilai') {
          transkripNilaiFileName = file.name.toString();
        } else if (fieldName == 'pasFoto') {
          pasFotoFileName = file.name.toString();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Text(
                "Pendaftaran",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'NIK',
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ijazah"),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 102, 138, 125),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () => openFile('ijazah'),
                                    child: Text(
                                      'Choose File',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Text(
                                  ijazahFileName,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Raport"),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 102, 138, 125),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () => openFile('raport'),
                                    child: Text('Choose File',
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                Text(
                                  raportFileName,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kartu Keluarga"),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 102, 138, 125),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () => openFile('kartuKeluarga'),
                                    child: Text('Choose File',
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                Text(
                                  kartuKeluargaFileName,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Akta Kelahiran"),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 102, 138, 125),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () => openFile('aktaKelahiran'),
                                    child: Text('Choose File',
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                Text(
                                  aktaKelahiranFileName,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Transkrip Nilai SMA"),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 102, 138, 125),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () => openFile('transkripNilai'),
                                    child: Text('Choose File',
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                Text(
                                  transkripNilaiFileName,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pas Foto 4x6 Ukuran 2MB"),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 102, 138, 125),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () => openFile('pasFoto'),
                                    child: Text('Choose File',
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                Text(
                                  pasFotoFileName,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(150, 40)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: Text(
                          "Daftar",
                          style: TextStyle(fontSize: 20),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
