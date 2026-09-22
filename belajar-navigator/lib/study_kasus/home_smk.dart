import 'package:flutter/material.dart';
import 'detail_page.dart'; // Karena sudah satu folder di study_kasus, panggil langsung nama filenya

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMK PGRI 1 Giri', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.school, size: 80, color: Colors.blue),
            const SizedBox(height: 16),
            const Text('Selamat Datang!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Jelajahi area SMK PGRI 1 Giri Banyuwangi.', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.account_balance, color: Colors.blue),
                title: const Text('Gedung Utama', style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DetailPage()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.computer, color: Colors.blue),
                title: const Text('Laboratorium Komputer', style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.build, color: Colors.blue),
                title: const Text('Bengkel Praktik', style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}