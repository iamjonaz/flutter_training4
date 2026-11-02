import 'package:flutter/material.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_info.dart';
import 'widgets/profile_stats.dart';
import 'widgets/experience_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _userName = 'Arjuna Meiureksa';
  final String _role = 'Mahasiswa Teknik Informatika';
  final TextEditingController _nameController = TextEditingController();

  static const List<String> _experiences = [
    'Mempelajari dasar Flutter dan Dart',
    'Membangun antarmuka aplikasi mobile',
    'Mengelola project menggunakan Git dan GitHub',
  ];

  void _showEditDialog() {
    _nameController.text = _userName;

    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Edit Profil'),
          content: TextFormField(
            controller: _nameController,
            autofocus: true,
            decoration: const InputDecoration(
              labelText: 'Nama',
              hintText: 'Masukkan nama baru',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                final newName = _nameController.text.trim();
                if (newName.isNotEmpty) {
                  setState(() {
                    _userName = newName;
                  });
                }
                Navigator.of(dialogContext).pop();
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
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
        child: Column(
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 12),
            ProfileInfo(name: _userName, role: _role),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _showEditDialog,
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
                itemCount: _experiences.length,
                itemBuilder: (context, index) => ExperienceCard(title: _experiences[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
