import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/firestore/youtube_player.dart';

// ignore: must_be_immutable
class Upload extends StatefulWidget {
  String contest;
  Upload({required this.contest});
  @override
  _UploadViewState createState() => _UploadViewState();
}

class _UploadViewState extends State<Upload> {
  Future<void> okok(String rollno, String topic, String url) async {
    CollectionReference users =
        FirebaseFirestore.instance.collection(widget.contest);
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser!.uid.toString();
    FirebaseFirestore.instance
        .collection('Users')
        .doc(uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      users.doc(uid).set({
        'rollno': rollno,
        'topic': topic,
        'url': url,
        'uid': uid,
        'registered': true,
        'name': documentSnapshot['displayName'],
        'college': documentSnapshot['college'],
        'branch': documentSnapshot['dept'],
        'phone': documentSnapshot['phone'],
      });
    });

    return;
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController _rollnoController = TextEditingController();
  TextEditingController _topicController = TextEditingController();
  TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "images/logo.png",
      height: mq.size.height / 4,
    );

    final topicfield = TextFormField(
      controller: _topicController,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: "topic name",
        labelText: "Please insert topic name here",
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );

    final rollnoField = TextFormField(
      controller: _rollnoController,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: "X951XXXXX",
        labelText: "Please insert your roll number",
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );
    final urlfield = TextFormField(
      controller: _urlController,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: "URL",
        labelText: "Please insert Youtube url here",
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          rollnoField,
          topicfield,
          urlfield,
        ],
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.black,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Upload",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          okok(_rollnoController.text, _topicController.text,
              _urlController.text);
          FirebaseAuth auth = FirebaseAuth.instance;
          String uid = auth.currentUser!.uid.toString();
          FirebaseFirestore.instance
              .collection(widget.contest)
              .doc(uid)
              .get()
              .then((DocumentSnapshot documentSnapshot) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => YtPage(
                    name: documentSnapshot['name'],
                    rollno: documentSnapshot['rollno'],
                    topic: documentSnapshot['topic'],
                    url: documentSnapshot['url'],
                    college: documentSnapshot['college']),
              ),
            );
          });
        },
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(36),
          child: Container(
            height: mq.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                logo,
                fields,
                Padding(
                  padding: EdgeInsets.only(bottom: 150),
                  child: registerButton,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
