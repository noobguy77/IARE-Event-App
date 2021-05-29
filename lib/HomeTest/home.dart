import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/Events/home.dart';
import 'package:untitled/HomeTest/dev.dart';

import 'bottom_nav.dart';

const kBackgroundColor = Color(0xFFF8F8F8);
const kActiveIconColor = Color(0xFFE68342);
const kTextColor = Color(0xFF222B45);
const kBlueLightColor = Color(0xFFC7B8F5);
const kBlueColor = Color(0xFF817DC0);
const kShadowColor = Color(0xFFE6E6E6);

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IARE Tech Fest App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  List data = [
    {"color": Color(0xffff6968)},
    {"color": Color(0xff7a54ff)},
    {"color": Color(0xffff8f61)},
    {"color": Color(0xff2ac3ff)},
  ];

  List data1 = [
    {"event": "TECH FEST"},
    {"event": "ORGANISERS"},
    {"event": "MENTORS AND\nDEVELOPERS"},
    {"event": "HELP"},
  ];
  List icons = [
    {"icon": Icons.book},
    {"icon": Icons.person},
    {"icon": Icons.android},
    {"icon": Icons.computer},
  ];

  List events = [
    {"event": new TabView()},
    {"event": new DevelopersPage()},
    {"event": new DevelopersPage()},
    {"event": new TabView()},
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .40,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage("images/college.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("images/computer.svg"),
                    ),
                  ),
                  Text(
                    "Welcome To IARE",
                    style: Theme.of(context)
                        .textTheme
                        .display1!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, crossAxisSpacing: 2),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            onPressed: () => Navigator.of(context).push(
                                new MaterialPageRoute(
                                    builder: (context) =>
                                        events[index]["event"])),
                            color: data[index]["color"],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "        ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                bottomLeft: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30)),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.38)),
                                        child: Icon(
                                          icons[index]["icon"],
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 20),
                                      child: Text(
                                        data1[index]["event"],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      )),
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    padding: EdgeInsets.only(right: 10),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),

                    // child: GridView.count(
                    //   crossAxisCount: 2,
                    //   childAspectRatio: .85,
                    //   crossAxisSpacing: 20,
                    //   mainAxisSpacing: 20,
                    //   children: <Widget>[
                    //     CategoryCard(
                    //       title: "TECH FEST",
                    //       svgSrc: "images/event.svg",
                    //       press: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) {
                    //             return TabView();
                    //           }),
                    //         );
                    //       },
                    //     ),
                    //     CategoryCard(
                    //       title: "ORGANISERS",
                    //       svgSrc: "images/computer.svg",
                    //       press: (){
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) {
                    //             return Paper();
                    //           }),
                    //         );
                    //       },
                    //     ),
                    //     CategoryCard(
                    //       title: "MENTORS AND DEVELOPERS",
                    //       svgSrc: "images/computer.svg",
                    //       press: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) {
                    //             return DevelopersPage();
                    //           }),
                    //         );
                    //       },
                    //     ),
                    //     CategoryCard(
                    //       title: "HELP",
                    //       svgSrc: "images/computer.svg",
                    //       press: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) {
                    //             return DevelopersPage();
                    //           }),
                    //         );
                    //       },
                    //     )
                    //   ],
                    // ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
