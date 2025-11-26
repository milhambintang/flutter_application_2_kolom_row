import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2_kolom_row/models/wisata_model.dart';

class DetailScreen extends StatefulWidget {
  final WisataModel wisataModel;

  const DetailScreen({super.key, required this.wisataModel});
  
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // GAMBAR UTAMA DAN TOMBOL BACK (TUMPUKAN)
              Stack(
                children: [
                  // Gambar Utama
                  Image.asset(
                    widget.wisataModel.gambarUtama,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                  ),
                  
                  // Tombol Back
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      }, 
                      icon: const Icon(Icons.arrow_back)
                    )
                  )
                ],
              ),
              // NAMA DAN TOMBOL LOVE
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Nama
                    Text(
                      widget.wisataModel.nama,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    // Tombol Love
                    IconButton(
                      onPressed: () {}, 
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    )
                  ],
                ),
              ),

              // INFORMASI ALAMAT, JAM BUKA, INSTAGRAM (ROW DENGAN ICON)
              // ALAMAT
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 16,
                    ),
                    Text(
                      "Alamat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(width: 24),
                    Text(': '),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(widget.wisataModel.alamat),
                    ),
                  ],
                ),
              ),
      
              // JAM BUKA
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.blue,
                      size: 16,
                    ),
                    SizedBox(
                      width: 65,
                      child: Text(
                        "Jam Buka",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Text(': '),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(widget.wisataModel.jamBuka),
                    ),
                  ],
                ),
              ),
      
              // INSTAGRAM
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.red,
                      size: 16,
                    ),
                    Text(
                      "Jam Buka",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(width: 24),
                    Text(': '),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(widget.wisataModel.jamBuka),
                    ),
                  ],
                ),
              )
      
          // DESKRIPSI
      
          // GALERI GAMBAR (SCROLLABLE)
           ],
          ),
        ),
      )
    );
  }
}
       




//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Gambar Utama
//             Image.asset('images/puntikayu.jpeg'), // Pastikan gambar sudah ditambahkan di pubspec.yaml
//             // Judul
//             Container(
//               margin: EdgeInsets.all(8),
//               width: double.infinity,
//               child: const Text(
//                 'PUNTI KAYU PALEMBANG',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24
//                 ),
//               ),
//             ),
//             // Icon dan Text
//             Container(
//               margin: EdgeInsets.all(16), // Memberikan jarak di sekitar container
//               child: Row( // Baris utama
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur jarak antar elemen
//                 children: [ // Baris untuk menampung ketiga ikon dan teks
//                   // Icon Pertama
//                   Column(
//                     children: [
//                       Icon(Icons.calendar_today),
//                       SizedBox(height: 8),
//                       Text('Buka Setiap Hari')
//                     ],
//                   ),
//                   // Icon Kedua
//                   Column(
//                     children: [
//                       Icon(Icons.timer),
//                       SizedBox(height: 8),
//                       Text('09.00 - 16.00')
//                     ],
//                   ),
//                   // Icon Ketiga
//                   Column(
//                     children: [
//                       Icon(Icons.payment),
//                       SizedBox(height: 8),
//                       Text('Rp 15.000')
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             // Deskripsi
//             Container(
//               margin: EdgeInsets.all(16),// Memberikan jarak di sekitar container
//               width: double.infinity,// Mengatur lebar container agar sesuai dengan lebar layar
//               child: Text(
//                 'Punti Kayu merupakan salah satu taman rekreasi yang terletak di Palembang, Sumatera Selatan. Taman ini menawarkan berbagai wahana permainan, area piknik, dan pemandangan alam yang indah, menjadikannya tempat yang populer untuk bersantai dan berlibur bersama keluarga. ',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16
//                 ),
//               ),
//             ),
//             // gambar scrollable
//             SizedBox(
//               height: 150,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
//                     child: Image.network(
//                      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit19201280gsm/events/2024/07/30/e3541933-0273-4eb4-8093-a373a8c5aad4-1722342423155-44aa0c775677663b0eaf9e4059150b7e.png'
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.network(
//                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ22vMYAz_xD8tzFXNA3yyRzsxoE7y8rm2ZG0UQEbryhI6FdXH8RKc4BikD1RyUFmA_ONs&usqp=CAU'
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.network(
//                         'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Hutan_Wisata_Punti_Kayu.jpg/1280px-Hutan_Wisata_Punti_Kayu.jpg'
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.network(
//                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfoyciWmxV9WC1XiCt9RFs35zEmOPzRyEN9w&s'
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }