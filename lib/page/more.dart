import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mindpeers_task/welcome_screen.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () =>
              Navigator.pushReplacementNamed(context, "/welcomescreen"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Thought guides',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  'Relatable thoughts, explained by psychologists',
                  style: TextStyle(
                    color: Color(0XFFBCBCBC),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
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
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Search for a guide",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: const Color(0XFF122847),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        '    All   ',
                        style: TextStyle(
                          color: Color(0XFFE6E6E6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 60),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: const Color(0XFF122847),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Stress',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Text(
                        'More filters',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.more,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  color: Color(0XFF85A8DA),
                ),
                height: 130.0,
                width: 368.0,
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/for.jpg',
                            height: 104.0,
                            width: 135,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: <Widget>[
                                  SvgPicture.asset('assets/streams.svg'),
                                  const Text(
                                    ' 5k views',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('assets/time.svg'),
                                const Text(
                                  ' 5-7 min',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 35,
                          child: const Text(
                            'when I am Anxious about life transitions..',
                            //softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0XFF000000),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    color: const Color(0XFFFFFFFF),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: const Text(
                                    'Stress',
                                    style: TextStyle(
                                      color: Color(0XFFE294962),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: const Color(0XFFFFFFFF),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Text(
                                  'why hello th..',
                                  style: TextStyle(
                                    color: Color(0XFF294962),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Color(0XFF85A8DA),
                  ),
                  height: 130.0,
                  width: 368.0,
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/for1.jpg',
                              height: 104.0,
                              width: 135,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset('assets/streams.svg'),
                                    const Text(
                                      ' 5k views',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/time.svg'),
                                  const Text(
                                    ' 5-7 min',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 35,
                            child: const Text(
                              'when I am Anxious about life transitions..',
                              //softWrap: true,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0XFF000000),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: const Color(0XFFFFFFFF),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Text(
                                      'Stress',
                                      style: TextStyle(
                                        color: Color(0XFFE294962),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    color: const Color(0XFFFFFFFF),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: const Text(
                                    'why hello th..',
                                    style: TextStyle(
                                      color: Color(0XFF294962),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Color(0XFF85A8DA),
                  ),
                  height: 130.0,
                  width: 368.0,
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/for2.jpg',
                              height: 104.0,
                              width: 135,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset('assets/streams.svg'),
                                    const Text(
                                      ' 5k views',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/time.svg'),
                                  const Text(
                                    ' 5-7 min',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 35,
                            child: const Text(
                              'when I am Anxious about life transitions..',
                              //softWrap: true,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0XFF000000),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: const Color(0XFFFFFFFF),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Text(
                                      'Stress',
                                      style: TextStyle(
                                        color: Color(0XFFE294962),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    color: const Color(0XFFFFFFFF),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: const Text(
                                    'why hello th..',
                                    style: TextStyle(
                                      color: Color(0XFF294962),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Color(0XFF85A8DA),
                  ),
                  height: 130.0,
                  width: 368.0,
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/for3.jpg',
                              height: 104.0,
                              width: 135,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset('assets/streams.svg'),
                                    const Text(
                                      ' 5k views',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/time.svg'),
                                  const Text(
                                    ' 5-7 min',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 35,
                            child: const Text(
                              'when I am Anxious about life transitions..',
                              //softWrap: true,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0XFF000000),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: const Color(0XFFFFFFFF),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Text(
                                      'Stress',
                                      style: TextStyle(
                                        color: Color(0XFFE294962),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    color: const Color(0XFFFFFFFF),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: const Text(
                                    'why hello th..',
                                    style: TextStyle(
                                      color: Color(0XFF294962),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
