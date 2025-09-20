import 'package:flutter/material.dart';

class KotakBiruJempol extends StatelessWidget {
  final Color warna;
  final String teks;
  KotakBiruJempol({required this.warna, required this.teks});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: warna,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.favorite, color: Colors.red, size: 40),
        ),
        SizedBox(height: 8),
        Text(teks),
      ],
    );
  }
}
