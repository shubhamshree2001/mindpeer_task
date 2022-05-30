import 'package:flutter/material.dart';
import 'package:mindpeers_task/page/boats.dart';
import 'package:mindpeers_task/page/insights.dart';
import 'package:mindpeers_task/page/more.dart';
import 'package:mindpeers_task/page/therapy.dart';
import 'package:mindpeers_task/welcome_screen.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    WelcomeScreen(),
    Therapy(),
    Boats(),
    Insights(),
    More(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          //color: Color(0XFF0B1523),
          border: Border(
            top: BorderSide(color: Color(0XFF8FA8CC), width: 1.0),
          ),
        ),
        child: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0XFF0B1523),
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.psychology),
              label: 'therapy',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bolt),
              label: 'boats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'insights',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
