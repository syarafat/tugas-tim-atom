import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LewatTempo extends StatefulWidget {
  const LewatTempo({super.key});

  @override
  State<LewatTempo> createState() => _LewatTempoState();
}

class _LewatTempoState extends State<LewatTempo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 10),
        child: Container(
          width: double.infinity,
          height: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  child: Image.asset("assets/logoselesai.png"),
                ),
              ),
              Container(
                width: 370,
                child: Text(
                  "Tidak ada tugas yang lewat jatuh tempo pada saat ini",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 370,
                  child: Text(
                    "Atau menavigasi ke tim kelas individu untuk memeriksa hasil lainnya.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
