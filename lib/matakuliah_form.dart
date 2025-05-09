import 'package:flutter/material.dart';
import './matakuliah_detail.dart';

class MatakuliahForm extends StatefulWidget {
  const MatakuliahForm({super.key});

  @override
  State<MatakuliahForm> createState() => _MatakuliahFormState();
}

class _MatakuliahFormState extends State<MatakuliahForm> {
  final _formKey = GlobalKey<FormState>();
  final _mataKuliahCtrl = TextEditingController();
  final _sksCtrl = TextEditingController();
  final _semesterCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Matakuliah", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            _mataKuliahField(),
            SizedBox(height: 10),
            _sksField(),
            SizedBox(height: 10),
            _semesterField(),
            SizedBox(height: 10),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _mataKuliahField() {
    return TextField(
      decoration: InputDecoration(labelText: "Matakuliah"),
      controller: _mataKuliahCtrl,
    );
  }

  Widget _sksField() {
    return TextField(
      decoration: InputDecoration(labelText: "SKS"),
      controller: _sksCtrl,
    );
  }

  Widget _semesterField() {
    return TextField(
      decoration: InputDecoration(labelText: "Semester"),
      controller: _semesterCtrl,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => MatakuliahDetail(
                  mataKuliah: _mataKuliahCtrl.text,
                  sks: int.parse(_sksCtrl.text),
                  semester: _semesterCtrl.text,
                ),
          ),
        );
      },
      child: Text("Simpan"),
    );
  }
}
