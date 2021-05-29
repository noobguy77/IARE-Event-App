import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Events/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_curousel = new Container(
      height: 230.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/college.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 5),
        dotSize: 0.0,
        indicatorBgPadding: 0.0,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('WELCOME TO IARE', style: TextStyle(color: Colors.white)),
          elevation: 0.0,
          titleSpacing: 10.0,
          centerTitle: true,
          // leading: InkWell(
          //   onTap: () {},
          //   child: Icon(Icons.water_damage,
          //       color: Colors.white),
          // ),
        ),
        drawer: new Drawer(
            child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Aravind Reddy"),
              accountEmail: Text("armr@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
            InkWell(
                onTap: () => Navigator.of(context).pop(
                    new MaterialPageRoute(builder: (context) => HomePage())),
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home, color: Colors.red),
                )),
            InkWell(
                onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => TabView())),
                child: ListTile(
                  title: Text("My Registrations"),
                  leading: Icon(Icons.shopping_basket, color: Colors.red),
                )),
            InkWell(
                onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => TabView())),
                child: ListTile(
                  title: Text("Payments"),
                  leading: Icon(Icons.payment, color: Colors.red),
                )),
            InkWell(
                onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => TabView())),
                child: ListTile(
                  title: Text("Intrested Events"),
                  leading: Icon(Icons.favorite, color: Colors.red),
                )),
            Divider(),
            InkWell(
                onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => TabView())),
                child: ListTile(
                  title: Text("Developers"),
                  leading: Icon(Icons.person, color: Colors.red),
                )),
            InkWell(
                onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => TabView())),
                child: ListTile(
                  title: Text("About Event"),
                  leading: Icon(
                    Icons.help,
                    color: Colors.red,
                  ),
                ))
          ],
        )),
        body: new ListView(children: <Widget>[
          image_curousel,
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Hai,',
              style: TextStyle(fontSize: 40),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Aravind Reddy M',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 100.0,
            width: 50,
            margin: EdgeInsets.all(20),
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () => Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => new TabView())),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    "TECH FEST\n2021",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
