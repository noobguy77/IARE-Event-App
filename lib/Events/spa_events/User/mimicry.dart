import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Events/con_events/User/upload.dart';

class Mimicry extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<Mimicry> {
  @override
  Widget build(BuildContext context) {
    Widget buildButton(IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w600, color: tintColor),),
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
                          contest: "Mimicry",
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
                      colors: [ Color(0xffff8f61), Color(0xffff8f61)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Container(
                  constraints:
                  BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),),
        ],
      ),
    );
    final bottomTextSection = new Container(
      padding: const EdgeInsets.all(20.0),

      child: RichText(
  text: TextSpan(
    //style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[

      
      
      TextSpan(
        text: "General Rules:\n",
        style: TextStyle(color: Color(0xffff8f61),fontWeight: FontWeight.bold,fontSize: 20),
      ),
      TextSpan(
                  text: '1)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black)),TextSpan(
                  text: 'Late video submissions will not be accepted.\n',
                  style: TextStyle(
                      fontFamily: 'Nunito',fontSize: 18, color: Colors.black)),
             
     
              
              
      TextSpan(
        text: '2)',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
        
                TextSpan(
                  text: 'All specific and technical rules must be followed.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
            
        
      
 
      TextSpan(
        text: '3)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'All content submissions – shall be in good taste and shall NOT be obscene, vulgar, libelous, defamatory, immoral, insensitive, insulting, annoying, hurt any religious sentiments, or infringe the rights of any third party, etc\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
              
      TextSpan(
        text: """4)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'The decisions of the College and judges for any of the Competitions are final and binding.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
                
     TextSpan(
        text: "Specific Rules:\n",
        style: TextStyle(color: Color(0xffff8f61),fontWeight: FontWeight.bold,fontSize: 20),
      ),
      TextSpan(
                  text: '1)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black)),TextSpan(
                  text: 'The acting submission should be a minimum of 90 seconds and a maximum of 180 seconds\n',
                  style: TextStyle(
                      fontFamily: 'Nunito',fontSize: 18, color: Colors.black)),
             
     
              
              
      TextSpan(
        text: '2)',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
        
                TextSpan(
                  text: 'Participants will have to choose a monologue, a famous speech, or a popular movie scene.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
            
        
      
 
      TextSpan(
        text: '3)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'The participants must introduce the artist, the character, and the movie from where they have picked up the monologue.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
              
      TextSpan(
        text: """4)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Languages: Hindi or English\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
             
      TextSpan(
        text: """5)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Editing the video in any manner will lead to disqualification.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
      TextSpan(
        text: """6)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Participants can use costumes while delivering their monologue.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
        
     TextSpan(
        text: "Technical Guidelines:\n",
        style: TextStyle(color: Color(0xffff8f61),fontWeight: FontWeight.bold,fontSize: 20),
      ),
      TextSpan(
                  text: '1)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black)),TextSpan(
                  text: 'Frame yourself such that your facial expressions are clear, and your body movements are captured fully.\n',
                  style: TextStyle(
                      fontFamily: 'Nunito',fontSize: 18, color: Colors.black)),
             
     
              
              
      TextSpan(
        text: '2)',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
        
                TextSpan(
                  text: 'Ensure that the lighting is good, darkened silhouette video will lead to disqualification\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
            
        
      
 
      TextSpan(
        text: '3)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Background noise must be removed.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
              
      TextSpan(
        text: """4)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'The video must be shot horizontally.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
             
      TextSpan(
        text: """5)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'The duration of the video has to be between 4-5 minutes.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
      TextSpan(
        text: """6)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Participants can use only normal type of mehandi (no extra colours)\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
TextSpan(
                  text: '7)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black)),TextSpan(
                  text: 'Neatness will be observed in design.\n',
                  style: TextStyle(
                      fontFamily: 'Nunito',fontSize: 18, color: Colors.black)),
             
     
              
              
      

      
      
    ],
  ),
)
      
    );
    
    //build function returns a "Widget"
    return new MaterialApp(
        title: "",
        debugShowCheckedModeBanner:false,
        home: new Scaffold(
            appBar: new AppBar(
              backgroundColor:  Color(0xffff8f61),
              title: new Text('Mono Acting',textAlign: TextAlign.center,),
              actions:<Widget>[
                
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
                new Image.network(
                    'https://pes.edu/wp-content/uploads/2020/01/posterE_400X222.jpg',
                    fit: BoxFit.cover,
                    height: 200.0,
                ),
                //You can add more widget bellow

                bottomTextSection,
                Padding(padding: const EdgeInsets.only(top: 0),),
                 Text("    FACULTY INCHARGES",
                  textAlign:TextAlign.left,
                  style:TextStyle(color: Color(0xffff8f61),fontWeight: FontWeight.bold,fontSize: 20),),
                Padding(padding: const EdgeInsets.only(top: 20),),
                SingleChildScrollView(
                  child: DataTable(
                    //sortAscending: true,
                      sortColumnIndex: 0,
                      //columnSpacing: 2.0,
                      dataRowHeight: 70.0,
                      headingRowHeight: 40.0,
                      columns: [
                        DataColumn(label: Text("Name",
                          textAlign:TextAlign.start,
                          style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        DataColumn(label: Text("Dept",textAlign:TextAlign.start,
                          style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),),
                        DataColumn(label: Text("Phone",textAlign:TextAlign.start,
                          style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),)
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("Mr. Ch Suresh Kumar Raju",style: TextStyle(color: Colors.black,fontSize: 17.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("IT",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),)),
                          DataCell(Text("8121285286",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Ms. B Pravallika",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("IT",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),)),
                          DataCell(Text("8187898792",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),))
                        ]),
                        
                      ]),
                ),

                Padding(padding: const EdgeInsets.only(top: 30),),
                Text("    STUDENT VOLUNTEERS",
                  textAlign:TextAlign.left,
                  style:TextStyle(color: Color(0xffff8f61),fontWeight: FontWeight.bold,fontSize: 20),),
                Padding(padding: const EdgeInsets.only(top: 20),),
                SingleChildScrollView(
                  child: DataTable(
                    //sortAscending: true,
                      sortColumnIndex: 0,
                      //columnSpacing: 2.0,
                      dataRowHeight: 70.0,
                      headingRowHeight: 40.0,
                      columns: [
                        DataColumn(label: Text("Name",textAlign:TextAlign.start,
                          style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        DataColumn(label: Text("Dept",textAlign:TextAlign.start,
                          style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        DataColumn(label: Text("Phone",textAlign:TextAlign.start,
                          style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("Mr. B Kamal",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("IT",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("7330781345",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Mr. T Sathwik",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("IT",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("6303319660",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Ms. Y Sharmista Reddy",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("IT",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("9052555961",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                        ]),
                      ]),
                ),

                twoButtonsSection
              ],
            )
            
        )
    );//Widget with "Material design"
  }
}