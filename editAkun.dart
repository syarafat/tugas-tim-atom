import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas/siswa/bottom/bottom.dart';
import 'package:uas/siswa/register/provReg.dart';
import 'package:image_picker/image_picker.dart';

class EditAkunSiswa extends StatefulWidget {
  const EditAkunSiswa({Key? key}) : super(key: key);

  @override
  State<EditAkunSiswa> createState() => _EditAkunSiswaState();
}

class _EditAkunSiswaState extends State<EditAkunSiswa> {
  // Gambar default (icon)
  final IconData defaultIcon = Icons.account_circle;
  final Color defaultIconColor = Colors.grey;

  Future<void> getImage(ProviderPendaftaranSatu provider) async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      final fileBytes = await pickedImage.readAsBytes();

      if (fileBytes.isNotEmpty) {
        final Uint8List bytes = Uint8List.fromList(fileBytes);
        provider.setImageData(bytes);
      }
    }
  }

  List<String> biodata = [
    "Nama Lengkap",
    "Alamat",
    "Nomor Telepon",
    "Email",
    "Nama Ayah",
    "Nama Ibu",
    "Nomor Telepon Orang Tua"
  ];

  @override
  Widget build(BuildContext context) {
    var getData = Provider.of<ProviderPendaftaranSatu>(context);
    List<TextEditingController> inputData = [
      getData.namalengkapcontr,
      getData.alamatcontr,
      getData.notelpcontr,
      getData.emailcontr,
      getData.namaAyahcontr,
      getData.namaIbucontr,
      getData.noHpOrtucontr,
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.white,
                          child: getData.imageData != null
                              ? Image.memory(
                                  getData.imageData!,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                )
                              : Icon(
                                  defaultIcon,
                                  color: defaultIconColor,
                                  size: 100,
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () => getImage(getData),
                          child: Text("Ganti Foto"),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF24C929),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      for (var i = 0; i < biodata.length; i++)
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 10),
                                child: Text(biodata[i]),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: inputData[i],
                                  decoration: InputDecoration(
                                    hintText: biodata[i],
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Aksi saat tombol "Cancel" ditekan
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.black,
                              ),
                              child: Text(
                                'Batal',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Konfirmasi'),
                                      content: Text(
                                          'Apakah Anda yakin ingin mengubahnya?'),
                                      actions: [
                                        TextButton(
                                          child: Text('Batal'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        TextButton(
                                          child: Text('Ya'),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Bottom(),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF00BB78),
                                onPrimary: Colors.white,
                              ),
                              child: Text(
                                'Simpan',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
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
    );
  }
}
