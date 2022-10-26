import 'package:flutter/material.dart';
import 'package:my_tdah/pages/demo_ini.dart';
import 'package:my_tdah/pages/login.dart';
import 'package:my_tdah/pages/new_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DemoPage(),
        '/login': (context) => const Login(),
        '/newAccount': (context) => const NewAccount()
      },
    );
  }
}
