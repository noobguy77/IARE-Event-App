import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Events/Eventpage/home.dart';
import 'package:untitled/Screens/Developers.dart';
import 'package:untitled/Screens/Organisers.dart';
import 'package:untitled/Screens/about.dart';
import 'package:untitled/firestore/firebase.dart';

class HomeScreen extends StatelessWidget {
  List data = [
    {"color": Color(0xffe53935)},
    {"color": Color(0xff96da45)},
    {"color": Color(0xff7a54ff)},
    {"color": Color(0xff2ac3ff)},
  ];

  List data1 = [
    {"event": "Events"},
    {"event": "Organisers"},
    {"event": "Developers"},
    {"event": " About"},
  ];
  List icons = [
    {"icon": Icons.event},
    {"icon": Icons.people},
    {"icon": Icons.people},
    {"icon": Icons.help},
  ];
  List events = [
    {"event": new TabView()},
    {"event": new Organisers()},
    {"event": new Developers()},
    {
      "event": new About(),
    },
  ];
  final colorwhite = Colors.white;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        title: Text("lol"),
        centerTitle: true,
        actions: [
          ElevatedButton.icon(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, '/auth-login');
            },
            icon: Icon(Icons.person),
            label: Text("Logout"),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .38,
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
                  ),
                  Text(
                    "\n\n\n\n",
                    style: Theme.of(context)
                        .textTheme
                        .display1!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.builder(
                      itemCount: data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: .1,
                        mainAxisSpacing: 10,
                        // crossAxisSpacing: 10
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 0.5),
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                                new MaterialPageRoute(

                                    //passing values to prod
                                    builder: (context) =>
                                        events[index]["event"])),
                            child: Card(
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
                                              color: colorwhite, fontSize: 16),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(30),
                                                  bottomLeft:
                                                      Radius.circular(30),
                                                  bottomRight:
                                                      Radius.circular(30)),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.38)),
                                          child: Icon(
                                            icons[index]["icon"],
                                            color: colorwhite,
                                            size: 24,
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                        alignment: Alignment.topLeft,
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 5),
                                        child: Text(
                                          data1[index]["event"],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: colorwhite,
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
                          ),
                        );
                      },
                    ),
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

const kBackgroundColor = Color(0xFFF8F8F8);
const kActiveIconColor = Color(0xFFE68342);
const kTextColor = Color(0xFF222B45);
const kBlueLightColor = Color(0xFFC7B8F5);
const kBlueColor = Color(0xFF817DC0);
const kShadowColor = Color(0xFFE6E6E6);

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29.5),
      ),
    );
  }
}
