import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:uas/siswa/bottom/provBerita.dart';

import '../jurusan/tkj.dart';

class Berita extends StatefulWidget {
  const Berita({super.key});

  @override
  State<Berita> createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  @override
  Widget build(BuildContext context) {
    var provBerita = Provider.of<BeritaProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Berita"),
          backgroundColor: Color.fromRGBO(47, 65, 123, 1),
        ),
        body: Column(
          children: [
            for (var i = 0; i < provBerita.judul.length; i++)
              Padding(
                padding: const EdgeInsets.only(
                    top: 12, left: 20, right: 20, bottom: 6),
                child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2))
                    ]),
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Berita()),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          onPrimary: Colors.black),
                      child: ListTile(
                        title: Text(
                          provBerita.judul[i],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        isThreeLine: true,
                        subtitle: Text(provBerita.isi[i]),
                        leading: Container(
                            width: 50,
                            height: 50,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage(provBerita.gambarBerita[i]),
                            )),
                      ),
                    )),
              ),
          ],
        ));
  }
}
