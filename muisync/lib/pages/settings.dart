import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool darkMode = false;
  bool notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.blueGrey),
            title: const Text('Account'),
            subtitle: const Text('Manage your account'),
            onTap: () {
              // Navigate to account page
            },
          ),
          const Divider(),
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode, color: Colors.blueGrey),
            title: const Text('Dark Mode'),
            value: darkMode,
            onChanged: (val) {
              setState(() => darkMode = val);
              // Optionally trigger theme change here
            },
          ),
          SwitchListTile(
            secondary: const Icon(Icons.notifications, color: Colors.blueGrey),
            title: const Text('Notifications'),
            value: notifications,
            onChanged: (val) {
              setState(() => notifications = val);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock, color: Colors.blueGrey),
            title: const Text('Privacy'),
            onTap: () {
              // Navigate to privacy settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blueGrey),
            title: const Text('About'),
            onTap: () {
              // Show about dialog
              showAboutDialog(
                context: context,
                applicationName: 'Muisync',
                applicationVersion: '1.0.0',
                applicationIcon: const Icon(Icons.music_note),
                children: [
                  const Text('A modern music sync app.'),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}