import 'package:belajar_flutter/ui/tampil_data.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(
          children: [
            _textboxNama(),
            _textboxNIM(),
            _textboxTahunLahir(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Nama'),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(labelText: 'NIM'),
      controller: _nimController,
    );
  }

  _textboxTahunLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Tahun Lahir'),
      controller: _tahunLahirController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int umur = DateTime.now().year - int.parse(_tahunLahirController.text);

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, umur: umur)));
        },
        child: const Text('Simpan'));
  }
}
