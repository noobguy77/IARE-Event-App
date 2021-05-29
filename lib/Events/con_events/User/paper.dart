import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Events/con_events/User/upload.dart';
import 'package:untitled/HomeScreen/homescreen.dart';

class Paper extends StatefulWidget {
  @override
  _PaperState createState() => _PaperState();
}

class _PaperState extends State<Paper> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    Widget buildButton(IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(
              buttonTitle,
              style: new TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: tintColor),
            ),
          )
        ],
      );
    }

    Widget twoButtonsSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 50.0,
            width: 150,
            margin: EdgeInsets.all(30),
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () {
                FirebaseAuth auth = FirebaseAuth.instance;
                String uid = auth.currentUser!.uid.toString();
                FirebaseFirestore.instance
                    .collection('Users')
                    .doc(uid)
                    .get()
                    .then((DocumentSnapshot documentSnapshot) {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Upload(
                        contest: "Paper",
                      ),
                    ),
                  );
                });
              },
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
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    final bottomTextSection = new Container(
        padding: const EdgeInsets.all(20.0),
        //How to show long text ?
        child: RichText(
          text: TextSpan(
            //style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: "General Rules:\n",
                style: TextStyle(
                    color: Color(0xff5a65ff),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              TextSpan(
                text:
                    '''1. This is a solo event, only 1 participant \n     is allowed per team
2. All the materials like Enamel Paints \n    (different colors), Brush, and\n    Container etc. It should be brought\n    by the participant.
3. Plain brown, grey and white colored pot \n    to be used.
4. Maximum height of the pot 10 inches.
5. Earthen or clay pots to be used.
6. The decision of judges will be \n    final and binding.
7. The criteria for judging will be:\n     choice of design, color combination\n     and cleanliness.''',
                style: TextStyle(
                    color: Colors.black, fontSize: 18.0, fontFamily: 'Nunito'),
              ),
            ],
          ),
        ));
    //build function returns a "Widget"
    return new MaterialApp(
        title: "",
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text(
                'PAPER PRESENTATION',
                textAlign: TextAlign.center,
              ),
              actions: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => HomePage())),
                ),
              ],
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            ),
            body: new ListView(
              children: <Widget>[
                new Image.asset(
                  'images/college.jpg',
                  fit: BoxFit.cover,
                  height: 250.0,
                ),
                //You can add more widget bellow

                bottomTextSection,
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                ),
                Text(
                  "FACULTY INCHARGES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                ),
                SingleChildScrollView(
                  child: DataTable(
                      //sortAscending: true,
                      sortColumnIndex: 0,
                      //columnSpacing: 2.0,
                      dataRowHeight: 40.0,
                      headingRowHeight: 40.0,
                      columns: [
                        DataColumn(
                          label: Text(
                            "Name",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Dept",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Phone",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(
                            Text("ABC"),
                          ),
                          DataCell(Text("CSE")),
                          DataCell(Text("9462112908"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Yogesh")),
                          DataCell(Text("CSE")),
                          DataCell(Text("9462112908"))
                        ]),
                      ]),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                ),
                Text(
                  "STUDENT VOLUNTEERS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                ),
                SingleChildScrollView(
                  child: DataTable(
                      //sortAscending: true,
                      sortColumnIndex: 0,
                      //columnSpacing: 2.0,
                      dataRowHeight: 40.0,
                      headingRowHeight: 40.0,
                      columns: [
                        DataColumn(
                          label: Text(
                            "Name",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Dept",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        DataColumn(
                            label: Text(
                              "Phone",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            numeric: true)
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(
                            Text("ABC"),
                          ),
                          DataCell(Text("CSE")),
                          DataCell(Text("9462112908"))
                        ]),
                        DataRow(cells: [
                          DataCell(
                            Text("ABC"),
                          ),
                          DataCell(Text("CSE")),
                          DataCell(Text("9462112908"))
                        ]),
                        DataRow(cells: [
                          DataCell(
                            Text("ABC"),
                          ),
                          DataCell(Text("CSE")),
                          DataCell(Text("9462112908"))
                        ]),
                        DataRow(cells: [
                          DataCell(
                            Text("ABC"),
                          ),
                          DataCell(Text("CSE")),
                          DataCell(Text("9462112908"))
                        ]),
                      ]),
                ),
                twoButtonsSection
              ],
            )));
  }
}
