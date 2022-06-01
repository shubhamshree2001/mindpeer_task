import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void signOutUser() async {
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                print("signout user");
                signOutUser();
              },
              icon: Icon(Icons.add_to_home_screen))
        ],
        leadingWidth: 60,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: SvgPicture.asset(
            "assets/profile.svg",
            height: 48.0,
            width: 48.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Good morning, Sahil',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const Text(
              '     Level up your life, begin your journey with insights.. ',
              style: TextStyle(
                color: Color(0XFFBCBCBC),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Color(0XFF9EBDE8),
                ),
                padding: EdgeInsets.all(26),
                height: 134,
                width: 368,
                //color: Color(0XFF9EBDE8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'Mind Care Index',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Get detailed wellness report with insights by expert!',
                            softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0XFF302F2F),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/mci.svg',
                      height: 60.0,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '   Tailored for you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0XFFEEEDED),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.3,
              child: ListView(
                children: <Widget>[
                  CarouselSlider(
                    items: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          color: Color(0XFF3BA554),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Vent out wall',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF000000),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'A safe space for you to pour your heart out and feel heard with our community',
                                style: TextStyle(
                                  color: Color(0XFF302F2F),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                height: size.height * 0.06,
                                child: SvgPicture.asset(
                                  'assets/ventout.svg',
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.all(
                      //       Radius.circular(5),
                      //     ),
                      //     color: Color(0XFF3B9EA5),
                      //   ),
                      //   padding: EdgeInsets.all(26),
                      //   height: 218,
                      //   //width: 263,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       Text(
                      //         'Vent out wall',
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           color: Color(0XFF000000),
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       Text(
                      //         'A safe space for you to pour your heart out and feel heard with our community',
                      //         style: TextStyle(
                      //           color: Color(0XFF302F2F),
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       Container(
                      //         child: SvgPicture.asset(
                      //           'assets/ventout.svg',
                      //           height: 45.0,
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.all(
                      //       Radius.circular(5),
                      //     ),
                      //     color: Color(0XFF9EBDE8),
                      //   ),
                      //   padding: EdgeInsets.all(26),
                      //   height: 218,
                      //   //width: 263,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       Text(
                      //         'Vent out wall',
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           color: Color(0XFF000000),
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       Text(
                      //         'A safe space for you to pour your heart out and feel heard with our community',
                      //         style: TextStyle(
                      //           color: Color(0XFF302F2F),
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       Container(
                      //         child: SvgPicture.asset(
                      //           'assets/ventout.svg',
                      //           height: 45.0,
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //     ],
                      //  ),
                      //),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      enlargeCenterPage: true,
                      autoPlay: false,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16.0),
              child: Container(
                height: 53.0,
                width: 368,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Color(0XFF122847),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "what do you want to work on today",
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 16.0, left: 16, right: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Color(0XFF163156),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const <Widget>[
                        // SvgPicture.asset(
                        //   'assets/trending.svg',
                        //   height: 60,
                        //   width: 60,
                        //   color: Colors.white,
                        //   // height: size.height * 0.13,
                        //   fit: BoxFit.cover,
                        //   //width: size.width * 0.6,
                        // ),
                        Icon(
                          Icons.trending_up,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Your peers are working on these',
                          style: TextStyle(
                            color: Color(0XFFBCBCBC),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: const Color(0XFF122847),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Stress',
                            style: TextStyle(
                              color: Color(0XFFE6E6E6),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: const Color(0XFF122847),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Anxiety',
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: const Color(0XFF122847),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Overthinking',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
