import 'package:flutter/material.dart';
import 'package:mindpeers_task/page/boats.dart';
import 'package:mindpeers_task/page/insights.dart';
import 'package:mindpeers_task/page/more.dart';
import 'package:mindpeers_task/page/therapy.dart';
import 'package:mindpeers_task/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'screens/sign_in.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  late User user;
  bool isSignedIn = false;

  checkAuthentication() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => SignIn()));
      }
    });
  }

  getUser() {
    User? user = _auth.currentUser; //get user
    user?.reload(); //reload user
    user = _auth.currentUser; //then provide current user
    if (user != null) {
      setState(() {
        this.user = user!;
        this.isSignedIn = true;
      });
    }
    print(this.user);
  }

  void signOutUser() async {
    _auth.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentication();
    this.getUser();
  }

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
