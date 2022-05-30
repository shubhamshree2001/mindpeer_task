import 'package:flutter/material.dart';
import 'package:mindpeers_task/main_page.dart';
import 'welcome_screen.dart';

void main() {
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
      home: MainPage(),
      routes: {
        "/welcomescreen": (_) => MainPage(),
      },
    );
  }
}
