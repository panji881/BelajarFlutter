import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris Dan Kolom"),
        backgroundColor: Colors.pink,
      ),
      body: Column (
        children: const[
          SizedBox(height: 90,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Baris 1,Kolom 1"),
              Text("Baris 1,Kolom 1"),
              Text("Baris 1,Kolom 3")
            ],
          ),
          SizedBox(height: 90,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Baris 2,Kolom 1"),
              Text("Baris 2,Kolom 2"),
              Text("Baris 2,Kolom 3")
            ],
          ),
          SizedBox(height: 90,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Baris 3,Kolom 1"),
              Text("Baris 3,Kolom 2"),
              Text("Baris 3,Kolom 3")
            ],
          )
        ],
      ),
    );
    
  }
}
