import 'package:flutter/material.dart';
import 'package:flutter_login_signup_form/theme/theme.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const WelcomeScreen(),
    );
  }
}
