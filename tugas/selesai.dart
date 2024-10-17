import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TugasSelesai extends StatefulWidget {
  const TugasSelesai({super.key});

  @override
  State<TugasSelesai> createState() => _TugasSelesaiState();
}

class _TugasSelesaiState extends State<TugasSelesai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          height: 700,
          width: double.infinity,
        ),
      ),
    );
  }
}
