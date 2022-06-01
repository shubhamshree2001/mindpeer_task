import 'package:flutter/material.dart';
import 'package:mindpeers_task/main_page.dart';
import 'package:mindpeers_task/screens/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0XFF0B1523),
        ),
        scaffoldBackgroundColor: Color(0XFF0B1523),
      ),
      home: SignIn(),
      routes: {
        "/welcomescreen": (_) => MainPage(),
      },
    );
  }
}
