import 'package:flutter/material.dart';
import 'package:user_preference/shared_preferences/preferences.dart';
import 'package:user_preference/widgets/personalized_drawer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: PersonalizedDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ajustes',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(),
                SwitchListTile(
                  value: Preferences.isDarkMode,
                  title: const Text('Darkmode'),
                  onChanged: (bool value) {
                    setState(() {
                      Preferences.isDarkMode = value;
                    });
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 1,
                  groupValue: Preferences.gender,
                  title: const Text('Male'),
                  onChanged: (int? value) {
                    setState(() {
                      Preferences.gender = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  value: 2,
                  groupValue: Preferences.gender,
                  title: const Text('Female'),
                  onChanged: (int? value) {
                    setState(() {
                      Preferences.gender = value!;
                    });
                  },
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    initialValue: Preferences.name,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      helperText: 'User name',
                    ),
                    onChanged: (value) {
                      setState(() {
                        Preferences.name = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
