import 'package:flutter/material.dart';
import 'package:user_preference/screens/home_screen.dart';
import 'package:user_preference/screens/setting_screen.dart';
import 'package:user_preference/shared_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomeScreen(),
        'settings': (BuildContext context) => SettingScreen(),
      },
    );
  }
}