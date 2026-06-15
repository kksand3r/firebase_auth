import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _SettingsItem(
            icon: Icons.login,
            title: 'Auth state persistence',
            subtitle:
                'Firebase зберігає сесію, тому користувач лишається залогіненим після перезапуску.',
          ),
          SizedBox(height: 12),
          _SettingsItem(
            icon: Icons.security,
            title: 'Protected route',
            subtitle:
                'Цей екран відкривається тільки коли AuthScope має поточного користувача.',
          ),
          SizedBox(height: 12),
          _SettingsItem(
            icon: Icons.mail_outline,
            title: 'Password reset',
            subtitle:
                'Користувач може отримати лист для відновлення паролю через Forgot Password.',
          ),
        ],
      ),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _SettingsItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black87),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
        ),
      ),
    );
  }
}
