import 'package:flutter/material.dart';

class VisiMisi extends StatelessWidget {
  const VisiMisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visi Misi"),
        backgroundColor: Color.fromRGBO(47, 65, 123, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                child: Text(
                  "Visi dan Misi SMKN 1 Panyabungan",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A. Visi Sekolah',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        'Terwujudnya Lembaga Diklat yang menghasilkan tamatan yang beriman dan bertaqwa, terampil, mandiri dan produktif serta dapat mengembangkan diri secara berkelanjutan.\n'),
                    Text(
                      'B. Misi Sekolah',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('1.Membentuk kecakapan hidup (life skill)\n'
                        '2.Memberdayakan semua komponen dan fasilitas sekolah\n'
                        '3.Menghasilkan tamatan melalui pembelajaran\n'
                        '4.Meningkatkan kualitas tenaga kependidikan\n'
                        '5.Membenahi sistem pembelajaran\n'
                        '6.Menyusun rancangan pembelajaran yang berbasis pendekatan scientific tematik terpadu dan terintegritas'
                        '7.Melestarikan dan mengembangkan olahraga & seni budaya\n'
                        '8.Mengembangkan pembelajaran dengan menggunakan teknologi informasi dan komunikasi untuk mencetak peserta didik yang berwawasan global.\n'),
                    Text(
                      'Moto Sekolah',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'MENCIPTAKAN INSAN AKADEMIS YANG BERIMAN DAN BERTAQWA KEPADA TUHAN YANG MAHA ESA,'
                      'CERDAS, UNGGUL DAN BERMARTABAT',
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 300,
                          child: Image.asset(
                            'assets/visimisi.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
              )
            ],
          )),
        ),
      ),
    );
  }
}
