import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Events/con_events/User/upload.dart';

class Drawing extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<Drawing> {
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
                          contest: "Drawing",
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
                      colors: [Color(0xff2ac3ff),Color(0xff2ac3ff)],
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
        style: TextStyle(color:Color(0xff2ac3ff),fontWeight: FontWeight.bold,fontSize: 20),
      ),
      TextSpan(
                  text: '1)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black)),
              TextSpan(
                  text: 'The drawings should be made on an art paper or an ordinary paper as per the convenience of the participant. There is no restriction for usage of colors.\n',
                  style: TextStyle(
                      fontFamily: 'Nunito',fontSize: 18, color: Colors.black)),
             
     
              
              
      TextSpan(
        text: '2)',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
        
                TextSpan(
                  text: 'All artwork must be original and pertain to the theme',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              TextSpan(
                  text: '“Direct observations/portfolio, Self-portrait,current affairs,Thought provoking drawing,seasonal drawing\n',
                  style: TextStyle(color: Colors.red,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
            
        
      
 
      TextSpan(
        text: '3)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Artwork can be landscape, portraits, still life, abstract, etc\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
              
      TextSpan(
        text: """4)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Media allowed includes: Pen, pencil, markers, paints, oils, charcoal, watercolors, canvas, and paper.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
              
             
      TextSpan(
        text: """5)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'Any mechanically or electronically generated artwork is not eligible and will be disqualified.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),
              
      TextSpan(
        text: """6)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'The final evaluation of the artworks will be handled by the online drawing competition judges. The judges decision is final, and no questions or appeals regarding the painting participant’s outcome will be considered.\n',
                  style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),
                ),

      TextSpan(
        text: """7)""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
        ),
                TextSpan(
                  text: 'The criteria for judging will be: Theme of design, Creativity, Engaging, Perfection and Presentation.\n',
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
              backgroundColor:Color(0xff2ac3ff),
              title: new Text('Drawing / Painting',textAlign: TextAlign.center,),
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
                    'https://i.ytimg.com/vi/04i4QzWHauM/maxresdefault.jpg',
                    fit: BoxFit.cover,
                    height: 200.0,
                ),
                //You can add more widget bellow

                bottomTextSection,
                Padding(padding: const EdgeInsets.only(top: 0),),
                Text("    FACULTY INCHARGES",
                  
                  textAlign:TextAlign.left,
                  style:TextStyle(color: Color(0xff2ac3ff),fontWeight: FontWeight.bold,fontSize: 20),),
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
                          DataCell(Text("Mr. N Chaitanya Kumar",style: TextStyle(color: Colors.black,fontSize: 17.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("ME",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),)),
                          DataCell(Text("8008880859",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Mr. G Sarath Raju",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("ME",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),)),
                          DataCell(Text("9985820122",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),))
                        ]),
                        
                      ]),
                ),

                Padding(padding: const EdgeInsets.only(top: 30),),
                Text("    STUDENT VOLUNTEERS",
                  textAlign:TextAlign.left,
                  style:TextStyle(color: Color(0xff2ac3ff),fontWeight: FontWeight.bold,fontSize: 20),),
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
                          DataCell(Text("Mr. Sharath",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("ME",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("8374692343",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Mr. Laxmi Kanth",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("IT",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                          DataCell(Text("9542797220",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Nunito'),),),
                        ]),
                       
                      ]),
                ),

                twoButtonsSection,
              ],
            )
            
        )
    );//Widget with "Material design"
  }
}