import 'package:flutter/material.dart';
import 'stat_item.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: StatItem(count: '15', label: 'Proyek')),
          Expanded(child: StatItem(count: '1.2K', label: 'Followers')),
          Expanded(child: StatItem(count: '42', label: 'Following')),
        ],
      ),
    );
  }
}
