import 'package:flutter/material.dart';
import 'package:row_and_column/KotakBiruJempol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(title: Text('Row and Column')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(warna: Colors.blue, teks: "Kotak 1"),
                  SizedBox(width: 20),
                  KotakBiruJempol(warna: Colors.green, teks: "Kotak 2"),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(warna: Colors.orange, teks: "Kotak 3"),
                  SizedBox(width: 20),
                  KotakBiruJempol(warna: Colors.purple, teks: "Kotak 4"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
