import 'package:flutter/material.dart';

class ProfilSekolah extends StatelessWidget {
  const ProfilSekolah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Sekolah"),
        backgroundColor: Color.fromRGBO(47, 65, 123, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Profil SMK Negeri 1 Panyabungan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 500,
                            child: Image.asset("assets/profilSekolah.png",
                                fit: BoxFit.contain),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 10.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                                'Sekolah Menengah Kejuruan (SMK) Negeri 1 Panyabungan Kabupaten Mandailing Natal (Madina) saat ini sudah memiliki sopo godang. Sop godang adalah satu bangunan yang  berfifat ornament khas kedaerahan.Keberadaan sop godang ini sebagai panggung pentas seni dan kegiatan sekolah ini.\n\n'
                                'Keberadaan sopo godang di SMK  Negri 1  Panyabungan adalah sebagai panggung pentas seni untuk menampilkan kegiatan-kegiatan siswa dan bisa juga dijadikan sebagai tempat musyawarah dan kegiatan PBM bagi siswa dan guru.Sopo Godang ini dibangun pada awal tahun 2015 yang lalu.\n\n'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Container(
                              child: Text(
                                '“ Di Mandailing, Sopo Godang juga dibuat  berbentuk rumah panggung, berkolong,  dan tidak berdidinding, agar setiap  penduduk (halak na jaji) bisa menyaksikan  dan mendengarkan berbagai konsep dan  keputusan “harajaon” yang menyangkut  hidup bersama. Itu sesuai dengan fungsi  dan makna yang melekat pada arsitektur  Sopo Godang ”\n\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                                'Fungsi Legislasi, yakni Sopo Godang sebagai tempat memusyawarahkan berbagai peraturan adat, baik kaidah maupun baris-baris hukum yang berlaku tetap dan mengikat segenap individu. Peraturan adat itu  dapat berupa patik, uhum, ugari, hapantonon, dan lain-lain. Jadi,berbagai keputusan hukum tradisional  ditetapkan di Sopo Godang.\n\n'
                                'Fungsi Yudikatif, yakni Sopo Godang sebagai Balai  Sidang, tempat memutuskan perkara menyangkut  pelanggaran norma dan adat tertentu, baik yang  dilakukan individu maupun kelompok.Ketika terjadi  pelanggaran norma dan adat, maka di Sopo Godang  berkumpul namora-natoras yang mewakili unsur  pemerintahan “harajaon” untuk memutuskan hukuman  atau denda atas suatu pelanggaran adat. Semua sidang  itu disaksikan terbuka oleh setiap orang (halak na jaji)\n\n'
                                'Fungsi Resepsionis. Kunjungan tamu-tamu kehormatan  diterima di Sopo Godang, bahkan dijadikan juga sebagai  tempat menginap bagi musyafir yang bermalam di huta  tersebut.\n\n'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
