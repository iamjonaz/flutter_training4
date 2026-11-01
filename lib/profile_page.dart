import 'package:flutter/material.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_info.dart';
import 'widgets/profile_stats.dart';
import 'widgets/experience_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const List<String> experiences = [
    'Mempelajari dasar Flutter dan Dart',
    'Membangun antarmuka aplikasi mobile',
    'Mengelola project menggunakan Git dan GitHub',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 12),
            const ProfileInfo(name: 'Arjuna Meiureksa', role: 'Mahasiswa Teknik Informatika'),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fitur edit belum aktif.')),
                );
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profil'),
            ),
            const SizedBox(height: 16),
            const ProfileStats(),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Pengalaman', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: experiences.length,
                itemBuilder: (context, index) => ExperienceCard(title: experiences[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
