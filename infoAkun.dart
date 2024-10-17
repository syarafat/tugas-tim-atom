import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas/siswa/login/login.dart';
import 'package:uas/siswa/register/provReg.dart';
import "dart:math";

class InfoAkun extends StatelessWidget {
  const InfoAkun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ProviderPendaftaranSatu>(context);

    String nisn = prov.nisncontr.text;
    String usrname = prov.namalengkapcontr.text;
    prov.updateUsername(nisn);
    prov.generatePassword(nisn, usrname);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3)),
              ]),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                            text:
                                'Selamat kepada ${prov.namalengkapcontr.text}, Berikut ini kami lampirkan Username dan Password yang bisa kamu gunakan untuk login kedalam aplikasi SMKN 1 Panyabungan.\n\n'
                                'Adapun datanya sebagai berikut :\n'
                                'NISN : ${prov.nisncontr.text}\n'
                                'Nama : ${prov.namalengkapcontr.text}\n'
                                'Username : ',
                          ),
                          TextSpan(
                            text: "${prov.lastFourCharacters}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '\n'
                                'Password : ',
                          ),
                          TextSpan(
                            text: prov.password,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '\n\n'
                                'Demikian data ini dibagikan.\n'
                                'Terima kasih atas perhatian dan kerjasamanya.\n\n'
                                'Hormat Saya,\n'
                                'Dida Al Farisi\n'
                                'Kepala sekolah SMKN 1 Panyabungan',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => Login()),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(
                          0, 187, 120, 1), // Ubah warna menjadi hijau
                      padding:
                          EdgeInsets.all(16), // Ubah ukuran menjadi lebih besar
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            50), // Ubah radius border menjadi 10
                      ),
                    ),
                    child: Text(
                      "Selanjutnya",
                      style: TextStyle(
                          fontSize: 20), // Ubah ukuran teks menjadi lebih besar
                    ),
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
