import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas/siswa/login/login.dart';
import 'package:uas/siswa/register/infoAkun.dart';
import 'package:uas/siswa/register/provReg.dart';

class ProsesData extends StatefulWidget {
  const ProsesData({Key? key});

  @override
  State<ProsesData> createState() => _ProsesDataState();
}

class _ProsesDataState extends State<ProsesData> {
  bool isLoading = false;

  void startLoading() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
      navigateToInfoAkun();
    });
  }

  void navigateToInfoAkun() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => InfoAkun()));
  }

  @override
  Widget build(BuildContext context) {
    var email = Provider.of<ProviderPendaftaranSatu>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 232, 250, 255),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                          "Proses Penerimaan Siswa",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        child: Text(
                          "Terima kasih ${email.emailcontr.text} telah mendaftar! Permohonan  Anda telah diterima dan sedang  diproses oleh  tim kami. Mohon tunggu konfirmasi selanjutnya Proses penerimaan siswa bisa memakan  waktu beberapa waktu, tergantung pada  jumlah peserta yang daftar. Oleh karena  itu, kami mohon kesabaran dan pengertian  dari Anda selama kami menyelesaikan proses  ini. Kami akan segera mengirimkan kabar  terbaru secepat mungkin melalui email yang  Anda berikan dalam aplikasi.",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              if (isLoading)
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: CircularProgressIndicator(),
                ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 187, 120, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: isLoading ? null : startLoading,
                    child: Text(
                      "Kembali",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
