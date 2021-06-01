import 'package:flutter/material.dart';

class Developers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'MyApp';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Developers',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Color(0xff7a54ff),
          actions: <Widget>[],
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://iare.ac.in/sites/default/files/lvnfinal_1.png',
                            // width: 300,
                            height: 300,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                        title: Text('Dr.L V Narasimha Prasad'),
                        subtitle: Text('Mentor (Principal, IARE)'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'http://buildit.iare.ac.in/images/team/drramu.jpg',
                            // width: 300,
                            height: 300,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                        title: Text('Dr.G Ramu'),
                        subtitle: Text('Mentor (Skill Development, IARE)'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://sharwansolanki.tech/images/bala.jpg',
                            // width: 300,
                            height: 300,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                        title: Text('Balavardhan Reddy Malyala'),
                        subtitle: Text('Developer (III CSE, IARE)'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://iare-data.s3.ap-south-1.amazonaws.com/uploads/cse/18951A0582.jpg',
                            // width: 300,
                            height: 300,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                        title: Text('Aravind Reddy'),
                        subtitle: Text('Developer (III CSE, IARE)'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://sharwansolanki.tech/images/p1.jpg',
                            // width: 300,
                            height: 300,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                        title: Text('Sharwan Solanki'),
                        subtitle: Text('Developer (III CSE, IARE)'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://sharwansolanki.tech/images/jayanth.jpg',
                            // width: 300,
                            height: 300,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                        title: Text('Jayanth Naidu'),
                        subtitle: Text('Developer (II CSE, IARE)'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
