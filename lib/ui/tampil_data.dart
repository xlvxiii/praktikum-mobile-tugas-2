import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  // final String data; //contoh data yang di-passing
  final String nama, nim;
  final int umur;

  const TampilData(
    {Key? key, 
    // required this.data,
    required this.nama,
    required this.nim,
    required this.umur
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Text('Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun'),
      ),
    );
  }
}
