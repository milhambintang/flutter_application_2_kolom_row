import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Judul
          Container(
            margin: EdgeInsets.all(8),
            child: const Text(
              'PUNTI KAYU',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
          ),
          // Icon dan Text
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Icon Pertama
                Column(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(height: 8),
                    Text('Buka Setiap Hari')
                  ],
                ),
                // Icon Kedua
                Column(
                  children: [
                    Icon(Icons.timer),
                    SizedBox(height: 8),
                    Text('09.00 - 16.00')
                  ],
                ),
                // Icon Ketiga
                Column(
                  children: [
                    Icon(Icons.money),
                    SizedBox(height: 8),
                    Text('Rp 15.000')
                  ],
                ),
              ],
            ),
          ),
          // Deskripsi
          Container()
        ],
      ),
    );
  }
}