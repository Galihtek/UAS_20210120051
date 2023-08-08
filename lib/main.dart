import 'package:flutter/material.dart';
import 'package:flutter_uas_galih/dashboard.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      initialRoute: 'login',
      routes: {
        '/login': (context) => Login(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}
