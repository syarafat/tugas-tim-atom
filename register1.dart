import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas/siswa/bottom/bottom.dart';
import 'package:uas/siswa/login/login.dart';
import 'package:uas/siswa/register/prose.dart';
import 'package:uas/siswa/register/provReg.dart';
import 'package:uas/siswa/register/reg2.dart';

class RegisterSatu extends StatefulWidget {
  const RegisterSatu({Key? key}) : super(key: key);

  @override
  State<RegisterSatu> createState() => _RegisterSatuState();
}

class _RegisterSatuState extends State<RegisterSatu> {
  List<String> pendaftaran = [
    "Nama Lengkap",
    "NISN",
    "Tempat/Tgl Lahir",
    "Alamat",
    "Alamat E-Mail",
    "Nomor Telepon",
    "Agama",
    "Nama Ayah",
    "Pekerjaan Ayah",
    "Nama Ibu",
    "Pekerjaan ibu",
    "Nomor Hp Orang Tua"
  ];

  List<String> jurusan = [
    "Pilih Jurusan",
    "Teknik Komputer dan Jaringan",
    "Multimedia",
    "Akuntansi dan keuangan Lembaga",
    "Perbankan",
    "Otomatisasi dan Tata Kelola Perkantoran",
    "Bisnis Daring dan Pemasaran"
  ];

  String selectedJurusan = "Pilih Jurusan";

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ProviderPendaftaranSatu>(context);
    List<TextEditingController> pend1 = [
      prov.namalengkapcontr,
      prov.nisncontr,
      prov.tglLahircontr,
      prov.alamatcontr,
      prov.emailcontr,
      prov.notelpcontr,
      prov.agamacontr,
      prov.namaAyahcontr,
      prov.pekerjaanAyahcontr,
      prov.namaIbucontr,
      prov.pekerjaanIbucontr,
      prov.noHpOrtucontr
    ];

    List pend2 = [
      prov.isNamaLengkap,
      prov.isNisn,
      prov.isTglLahir,
      prov.isAlamat,
      prov.isEmail,
      prov.isNoTelp,
      prov.isAgama,
      prov.isNamaAyah,
      prov.isPekAyah,
      prov.isNamaIbu,
      prov.isPekIbu,
      prov.isNoHpOrtu
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Pendaftaran",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                for (var i = 0; i < pendaftaran.length; i++)
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 10, right: 10),
                    child: TextField(
                      controller: pend1[i],
                      decoration: InputDecoration(
                          labelText: pendaftaran[i],
                          border: OutlineInputBorder(),
                          errorText: pend2[i] ? "Tidak Boleh kosong" : null),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 10, right: 10, bottom: 10),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 218, 218, 218),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedJurusan,
                        items: jurusan.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(value),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? piljur) {
                          setState(() {
                            prov.setSelectedJurusan(piljur);
                          });
                        },
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      prov.SetnamaLengkap = prov.namalengkapcontr.text.isEmpty;
                      prov.Setnisn = prov.nisncontr.text.isEmpty;
                      prov.setTglLahir = prov.tglLahircontr.text.isEmpty;
                      prov.SetAlamat = prov.alamatcontr.text.isEmpty;
                      prov.SetEmail = prov.emailcontr.text.isEmpty;
                      prov.SetNoTelp = prov.notelpcontr.text.isEmpty;
                      prov.SetAgama = prov.namaAyahcontr.text.isEmpty;
                      prov.SetNamaAyah = prov.namaAyahcontr.text.isEmpty;
                      prov.SetPekAyah = prov.pekerjaanAyahcontr.text.isEmpty;
                      prov.SetNamaIbu = prov.namaIbucontr.text.isEmpty;
                      prov.SetPekIbu = prov.namaIbucontr.text.isEmpty;
                      prov.SetNoHpOrtu = prov.noHpOrtucontr.text.isEmpty;

                      if (!prov.isNamaLengkap &&
                          !prov.isNisn &&
                          !prov.isTglLahir &&
                          !prov.isAlamat &&
                          !prov.isEmail &&
                          !prov.isNoTelp &&
                          !prov.isAgama &&
                          !prov.isNamaAyah &&
                          !prov.isPekAyah &&
                          !prov.isNamaIbu &&
                          !prov.isPekIbu &&
                          !prov.isNoHpOrtu) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Register2()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Color.fromRGBO(0, 187, 120, 1),
                        minimumSize: Size(120, 50)),
                    child: Text("Selanjutnya"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
