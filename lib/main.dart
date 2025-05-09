import 'package:flutter/material.dart';
// import 'halaman_pertama.dart';
import 'contoh_stateless.dart';
import 'contoh_stateful.dart';
import 'matakuliah_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Latihan Flutter', 
    home: MatakuliahForm()
    );
  }
}
