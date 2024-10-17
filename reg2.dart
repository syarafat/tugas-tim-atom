import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:uas/siswa/register/infoAkun.dart';
import 'package:uas/siswa/register/prose.dart';

class Register2 extends StatefulWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  String ijazahFileName = "No Chosen File";
  String raportFileName = "No Chosen File";
  String kartuKeluargaFileName = "No Chosen File";
  String aktaKelahiranFileName = "No Chosen File";
  String transkripNilaiFileName = "No Chosen File";
  String pasFotoFileName = "No Chosen File";

  //Loading
  bool isLoading = false;

  void startLoading() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
      navigatetoInfoAkun();
    });
  }

  void navigatetoInfoAkun() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => ProsesData()));
  }

  void openFile(String fieldName) async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Pendaftaran",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 500,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ijazah"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () => openFile('ijazah'),
                                    child: Text('Upload File'),
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
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Raport"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () => openFile('raport'),
                                    child: Text('Upload File'),
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
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kartu Keluarga"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () => openFile('kartuKeluarga'),
                                    child: Text('Upload File'),
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
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Akta Kelahiran"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () => openFile('aktaKelahiran'),
                                    child: Text('Upload File'),
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
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Transkrip Nilai SMA"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () => openFile('transkripNilai'),
                                    child: Text('Upload File'),
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
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pas Foto 4x6 Ukuran 2MB"),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () => openFile('pasFoto'),
                                    child: Text('Upload File'),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: isLoading ? null : startLoading,
                  child: Text("Kirim")),
              SizedBox(
                height: 16,
              ),
              if (isLoading) CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
