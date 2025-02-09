import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Events/con_events/User/upload.dart';

class Dancing extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<Dancing> {
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
                          contest: "Dancing",
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
                      colors: [Color(0xff7a54ff),Color(0xff7a54ff)],
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
        text: "Rules:\n",
        style: TextStyle(color: Color(0xff7a54ff),fontWeight: FontWeight.bold,fontSize: 20),
      ),
      TextSpan(
                  text: '1)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black)),
              TextSpan(
                  text: 'Participants should be undergraduate engineering students from any discipline with a team of Minimum 6 members.\n',
                  style: TextStyle(
                      fontFamily: 'Nunito',fontSize: 18, color: Colors.black)),   
      TextSpan(
        text: '2)',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
        
                TextSpan(
                  text: 'Costumes and music tracks must be approved by the Organizing Committee, one week prior to the event.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
            
        
      
 
      TextSpan(
        text: '3)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Dance performance should be in one shot and the camera should not move.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
              
      TextSpan(
        text: """4)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'No transitions and light effects are allowed.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
             
      TextSpan(
        text: """5)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Participants are allowed to edit the tracks they use.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
      TextSpan(
        text: """6)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Music/ Artist credits must be given at the end of the video.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),

      TextSpan(
        text: """7)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: ' Obscenity and vulgarity of any form will lead to immediate disqualification.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              TextSpan(
        text: """8)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'The decision of the judges will be final.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
TextSpan(
        text: """9)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'The video should be 3-4 minutes in a continuous mode without any editing.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
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
              backgroundColor:Color(0xff7a54ff),
              title: new Text('Dancing',textAlign: TextAlign.center,),
              
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
                    'https://www.rajras.in/wp-content/uploads/2016/10/bharatnatyam-dne.jpg',
                    fit: BoxFit.cover,
                    height: 200.0,
                ),
                //You can add more widget bellow

                bottomTextSection,
                Padding(padding: const EdgeInsets.only(top: 0),),
                Text("    FACULTY INCHARGES",
                  textAlign:TextAlign.left,
                  style:TextStyle(color: Color(0xff7a54ff),fontWeight: FontWeight.bold,fontSize: 20),),
                Padding(padding: const EdgeInsets.only(top: 20),),
                SingleChildScrollView(
                  child: DataTable(
                    //sortAscending: true,
                      sortColumnIndex: 0,
                      columnSpacing: 0.0,
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
                          DataCell(Text("Ms. P Shalini",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("CSE",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),)),
                          DataCell(Text("9000996255",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Ms. B Anupama",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("CSE",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),)),
                          DataCell(Text("8106557572",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),))
                        ]),
                      ]),
                ),

                Padding(padding: const EdgeInsets.only(top: 30),),
                Text("    STUDENT VOLUNTEERS",
                  textAlign:TextAlign.left,
                  style:TextStyle(color: Color(0xff7a54ff),fontWeight: FontWeight.bold,fontSize: 20),),
                Padding(padding: const EdgeInsets.only(top: 20),),
                SingleChildScrollView(
                  child: DataTable(
                    //sortAscending: true,
                      sortColumnIndex: 0,
                      columnSpacing: 0.0,
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
                          DataCell(Text("Ms. Raagasree",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("CSE",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("6304395902",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Ms. Asha Jasmine",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("CSE",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("9505806793",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Mr. Rohith Reddy",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("CSE",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("7569287205",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Mr. N Abhishek",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("CSE",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("7995738881",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
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
