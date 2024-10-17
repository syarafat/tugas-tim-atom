import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas/siswa/editAkun.dart';
import 'package:uas/siswa/login/login.dart';
import 'package:uas/siswa/register/provReg.dart';

class AkunSiswa extends StatefulWidget {
  const AkunSiswa({Key? key});

  @override
  State<AkunSiswa> createState() => _AkunSiswaState();
}

class _AkunSiswaState extends State<AkunSiswa> {
  List<String> teksbio = [
    "Nama Lengkap",
    "No Induk Siswa",
    "Program Studi",
    "Kelas",
    "Alamat",
    "Nomor Telepon",
    "Email",
    "Nama Ayah",
    "Nama Ibu",
    "Nomor Hp Orang Tua",
    "Wali Kelas"
  ];

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ProviderPendaftaranSatu>(context);

    List<dynamic> isiBio = [
      prov.namalengkapcontr.text,
      prov.nisncontr.text,
      prov.pilihJurusan,
      "12-Tkj 1",
      prov.alamatcontr.text,
      prov.notelpcontr.text,
      prov.emailcontr.text,
      prov.namaAyahcontr.text,
      prov.namaIbucontr.text,
      prov.noHpOrtucontr.text,
      "Abar Al Farisi"
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                ClipOval(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: prov.imageData != null
                        ? Image.memory(
                            prov.imageData!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.grey,
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 50, right: 50),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black,
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditAkunSiswa()),
                    ),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          for (var i = 0; i < teksbio.length; i++)
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 5),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      (teksbio[i]),
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        ("${isiBio[i]}"),
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => Login()),
                      (route) => false,
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 50),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(47, 65, 123, 1),
                      ),
                    ),
                    child: Text(
                      "Keluar",
                      style: TextStyle(fontSize: 20),
                    ),
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
