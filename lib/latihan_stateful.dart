import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Latihan Stateful', home: LatihanStateful());
  }
}

class LatihanStateful extends StatefulWidget {
  @override
  _LatihanStatefulState createState() => _LatihanStatefulState();
}

class _LatihanStatefulState extends State<LatihanStateful> {
  String _nama = "Siapa aku??";

  void _ubahNama() {
    setState(() {
      _nama = "Aku adalah Yin dan tidak akan pernah berubah";
    });
  }

  void _resetNama() {
    setState(() {
      _nama = "Siapa aku??";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Stateful", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  _nama,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center, // Menjaga teks tetap rata tengah
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _ubahNama, child: Text("Ubah Nama")),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _resetNama,
              child: Text("Reset", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
