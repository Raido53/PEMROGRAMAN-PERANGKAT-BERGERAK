import 'package:flutter/material.dart';
import 'success_page.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petunjuk Rute', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/denah_sekolah.png', // Pastikan gambar tersedia
                height: 180,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Text('Ikuti jalur ini untuk menuju Gedung Utama.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const Row(
              children: [
                CircleAvatar(radius: 14, backgroundColor: Colors.blue, child: Text('1', style: TextStyle(color: Colors.white, fontSize: 14))),
                SizedBox(width: 12),
                Expanded(child: Text('Dari gerbang sekolah, lurus melewati pos satpam.', style: TextStyle(fontSize: 16))),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                CircleAvatar(radius: 14, backgroundColor: Colors.blue, child: Text('2', style: TextStyle(color: Colors.white, fontSize: 14))),
                SizedBox(width: 12),
                Expanded(child: Text('Terus berjalan melewati area parkir siswa.', style: TextStyle(fontSize: 16))),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                CircleAvatar(radius: 14, backgroundColor: Colors.blue, child: Text('3', style: TextStyle(color: Colors.white, fontSize: 14))),
                SizedBox(width: 12),
                Expanded(child: Text('Gedung Utama berada tepat di depan lapangan.', style: TextStyle(fontSize: 16))),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SuccessPage()),
                );
              },
              child: const Text('Selesai', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}