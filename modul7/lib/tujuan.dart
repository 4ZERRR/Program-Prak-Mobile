import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "Ini Halaman Tujuan",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // padding global
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// TEKS ATAS
            const Text(
              'Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). '
              'Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. '
              'Route ini dapat dibuat secara kustom atau menggunakan MaterialPageRoute, '
              'yang memiliki animasi transisi sesuai dengan platform yang digunakan.',
              style: TextStyle(color: Colors.white),
            ),

            /// ICON TENGAH
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/128/3226/3226180.png",
                fit: BoxFit.contain,
              ),
            ),

            /// TEKS BAWAH
            const Text(
              'Untuk menutup halaman kedua dan kembali ke halaman pertama, gunakan metode Navigator.pop(). '
              'Metode pop() akan menghapus Route saat ini dari tumpukan Route yang dikelola oleh Navigator.',
              style: TextStyle(color: Colors.white),
            ),

            /// BUTTON BAWAH
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali ke Home"),
            ),
          ],
        ),
      ),
    );
  }
}