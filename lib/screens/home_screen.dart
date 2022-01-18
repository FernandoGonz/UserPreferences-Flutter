import 'package:flutter/material.dart';
import 'package:user_preference/shared_preferences/preferences.dart';
import 'package:user_preference/widgets/personalized_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: PersonalizedDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Darkmode: ${Preferences.isDarkMode}'),
            Divider(),
            Text('Gender: ${Preferences.gender}'),
            Divider(),
            Text('User name: ${Preferences.name}'),
            Divider(),
          ],
        ),
      ),
    );
  }
}
