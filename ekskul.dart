import "package:flutter/material.dart";

class EkskulSiswa extends StatelessWidget {
  const EkskulSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ekskul"),
        backgroundColor: Color.fromRGBO(47, 65, 123, 1),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Column(children: [
                Center(
                  child: Container(
                    width: double.infinity,
                    child: Image.asset("assets/ekskul.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Container(
                      child: Text(
                        'Kegiatan ekstrakurikuler adalah kegiatan yang diselenggarakan di luar jam pelajaran yang tercantum dalam susunan program sesuai dengan keadaan dan kebutuhan sekolah, dan dirancang secara khusus agar sesuai dengan faktor minat dan bakat siswa. Untuk lebih memperkaya dan memperluas wawasan pengetahuan dan kemampuan yang telah dimiliki siswa dari berbagai bidang studi.\n\n'
                        'Adapun Beberapa Fungsi dari Ekstrakurikuler:\n'
                        '\u2022 Pengembangan, yaitu kegiatan ekstrakurikuler berfungsi untuk mendukung perkembangan personal peserta didik melalui perluasan minat, pengembangan potensi, dan pembentukan karakter serta pelatihan kepemimpinan.\n'
                        '\u2022 Sosial, yaitu kegiatan ekstrakurikuler berfungsi untuk mengembangkan kemampuan dan rasa tanggung jawab, memberikan kesempatan pada peserta didik untuk memperluas pengalaman sosial, praktik keterampilan sosial, dan internalisasi nilai moral.\n'
                        '\u2022 Rekreatif, yaitu kegiatan ekstrakurikuler dilakukan dalam suasana rileks, menggembirakan, dan menyenangkan sehingga menunjang proses perkembangan peserta didik. Kegiatan ekstrakurikuler harus mampu menjadikan kehidupan atau atmosfer sekolah lebih menantang dan menarik bagi peserta didik.\n'
                        '\u2022 Persiapan Karir, yaitu kegiatan ekstrakurikuler berfungsi untuk mengembangkan kesiapan karir peserta didik melalui pengembangan kapasitas.\n\n'
                        'Ekstrakulikuler:\n'
                        '\u2022 Pramuka\n'
                        '\u2022 Futsal\n'
                        '\u2022 Pencak Silat\n'
                        '\u2022 Sepak Bola\n'
                        '\u2022 Basket\n'
                        '\u2022 Drumband\n'
                        '\u2022 Paskibra\n'
                        '\u2022 Palang Merah Indonesia',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
