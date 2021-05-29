import 'package:flutter/material.dart';


class DevelopersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Our Developers';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('DEVELOPERS',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          toolbarHeight: 100,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.white,size: 30,),
          ),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://iare.ac.in/sites/default/files/lvnfinal_1.png',
                            width: 200,
                            height: 400,
                            fit:BoxFit.cover

                        ),
                      ),
                      ListTile(
                        title: Text('Dr. L V N Prasad',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        subtitle: Text('Mentor (Principal , IARE)',style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
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
                            'http://buildit.iare.ac.in/images/team/drramu.jpg',
                            width: 200,
                            height: 400,
                            fit:BoxFit.cover

                        ),
                      ),
                      ListTile(
                        title: Text('Dr.G Ramu',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        subtitle: Text('Mentor (Skill Development , IARE)',style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
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
                            'https://iare-data.s3.ap-south-1.amazonaws.com/uploads/cse/18951A0519.jpg',
                            width: 200,
                            height: 400,
                            fit:BoxFit.cover

                        ),
                      ),
                      ListTile(
                        title: Text('M Balavardhan Reddy',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        subtitle: Text('Developer, IARE',style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://iare-data.s3.ap-south-1.amazonaws.com/uploads/cse/18951A0582.jpg',
                            width: 200,
                            height: 400,
                            fit:BoxFit.cover

                        ),
                      ),
                      ListTile(
                        title: Text('M Aravind Reddy',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        subtitle: Text('Developer, IARE',style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
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
                            'https://placeimg.com/640/480/any',
                            width: 200,
                            height: 400,
                            fit:BoxFit.cover

                        ),
                      ),
                      ListTile(
                        title: Text('Sharwan Solanki',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        subtitle: Text('Developer, IARE',style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
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
                            'https://placeimg.com/640/480/any',
                            width: 200,
                            height: 400,
                            fit:BoxFit.cover

                        ),
                      ),
                      ListTile(
                        title: Text('Jayanth Naidu',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        subtitle: Text('Developer, IARE',style: TextStyle(fontSize: 20),),
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