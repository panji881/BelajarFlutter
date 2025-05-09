import 'package:flutter/material.dart';

class MatakuliahDetail extends StatelessWidget {
  final String mataKuliah;
  final int sks;
  final String semester;

  const MatakuliahDetail({
    super.key,
    required this.mataKuliah,
    required this.sks,
    required this.semester,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Matakuliah", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Matakuliah : " + mataKuliah),
            Text("SKS : ${sks}"),
            Text("Semester : " + semester),
          ],
        ),
      ),
    );
  }
}
