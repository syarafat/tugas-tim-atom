import 'package:flutter/material.dart';

class ContohTugas extends StatefulWidget {
  final Widget container;
  final Function({Widget? container}) moveContainer;
  final List<Widget> list3;

  const ContohTugas({
    required this.container,
    required this.moveContainer,
    required this.list3,
  });

  @override
  State<ContohTugas> createState() => _ContohTugasState();
}

class _ContohTugasState extends State<ContohTugas> {
  bool isList3Item = false;

  List<Map<String, dynamic>> _questions = [
    {
      'question':
          'Manakah dari berikut ini yang merupakan jenis pengulangan di dalam algoritma pemrograman?',
      'options': [
        'A. Percabangan',
        'B. Perulangan',
        'C. Penugasan',
        'D. Pemrosesan Array'
      ],
      'correctAnswer': 2,
      'selectedAnswer': 0,
    },
    {
      'question':
          'Berikut ini adalah contoh algoritma pemrograman dalam bahasa pemrograman Python:\n for i in range(5):\n print(i)\nApa output yang akan dihasilkan?',
      'options': ['A. 0', 'B. 1', 'C. 2', 'D. Semuanya Benar'],
      'correctAnswer': 3,
      'selectedAnswer': 0,
    },
    {
      'question':
          'Manakah dari berikut ini yang merupakan operator matematika dalam algoritma pemrograman?',
      'options': ['A. IF-ELSE', 'B. FOR', 'C. +', 'D. INPUT'],
      'correctAnswer': 3,
      'selectedAnswer': 0,
    },
    {
      'question':
          'Manakah dari berikut ini yang merupakan struktur data linier dalam algoritma pemrograman?',
      'options': ['A. Stack', 'B. Binary Tree', 'C. Graph', 'D. Heap'],
      'correctAnswer': 3,
      'selectedAnswer': 0,
    },
    {
      'question':
          'Manakah dari berikut ini yang merupakan tipe data dalam algoritma pemrograman?',
      'options': ['A. Integer', 'B. Boolean', 'C. String', 'D. Semua Benar'],
      'correctAnswer': 3,
      'selectedAnswer': 0,
    },
  ];

  @override
  void initState() {
    super.initState();
    isList3Item = widget.list3.contains(widget.container);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 191, 215, 255),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    ...List.generate(_questions.length, (index) {
                      Map<String, dynamic> question = _questions[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${index + 1}. ${question['question']}",
                            style: TextStyle(fontSize: 20),
                          ),
                          ...List.generate(question['options'].length,
                              (optionIndex) {
                            String option = question['options'][optionIndex];
                            return RadioListTile(
                              title: Text(option),
                              value: optionIndex + 1,
                              groupValue: question['selectedAnswer'],
                              onChanged: (val) {
                                setState(() {
                                  question['selectedAnswer'] = val;
                                });
                              },
                            );
                          }),
                        ],
                      );
                    }),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => InfoSelesai(
                              moveContainer: widget.moveContainer,
                              container: widget.container,
                              isList3Item: isList3Item,
                            ),
                          ),
                        );
                      },
                      child: Text("Kumpul"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoSelesai extends StatelessWidget {
  final Function({Widget? container}) moveContainer;
  final Widget container;
  final bool isList3Item;

  const InfoSelesai({
    Key? key,
    required this.moveContainer,
    required this.container,
    required this.isList3Item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 191, 215, 255),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Tugas Selesai!!!",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Anda telah menyelesaikan tugas ini.",
                    style: TextStyle(fontSize: 18),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      moveContainer(container: container);
                      Navigator.pop(context);
                    },
                    child: Text(
                      isList3Item ? "Kembali" : "Kembali",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
