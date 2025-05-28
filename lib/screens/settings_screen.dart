import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;
  bool notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: Text('Dark Mode'),
              value: darkMode,
              onChanged: (val) {
                setState(() {
                  darkMode = val;
                });
              },
            ),
            SwitchListTile(
              title: Text('Enable Notifications'),
              value: notifications,
              onChanged: (val) {
                setState(() {
                  notifications = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
