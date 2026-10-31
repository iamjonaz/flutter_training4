import 'package:flutter/material.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget _stat(String count, String label) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(count, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
        ],
      ),
    );
  }

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const ProfileAvatar(),
              const SizedBox(height: 16),
              const ProfileInfo(name: 'Arjuna Meiureksa', role: 'Mahasiswa Teknik Informatika'),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer, borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    _stat('15', 'Proyek'),
                    _stat('1.2K', 'Followers'),
                    _stat('42', 'Following'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
