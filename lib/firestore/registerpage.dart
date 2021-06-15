import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  final String name;
  final String rollno;
  final String college;
  RegisterPage({
    Key? key,
    required this.name,
    required this.rollno,
    required this.college,
  }) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    String nam = widget.name;
    String roll = widget.rollno;
    String clg = widget.college;
    return Scaffold(
      appBar: AppBar(
        // title: Text("Uploads"),
        // centerTitle: true,
        // backgroundColor: Colors.red,
        backgroundColor: Color(0xff5a65ff),
        title: new Text(
          'Uploads',
          textAlign: TextAlign.center,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 300,
            height: 75,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Stack(
                children: <Widget>[
                  Align(
                    child: Text(
                      nam,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                      decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                          ),
                      child: Text("Name"),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 75,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Stack(
                children: <Widget>[
                  Align(
                    child: Text(
                      roll,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                      decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                          ),
                      child: Text("Roll Number"),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 75,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Stack(
                children: <Widget>[
                  Align(
                    child: Text(
                      clg,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                      decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ) // green shaped
                          ),
                      child: Text("College"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
