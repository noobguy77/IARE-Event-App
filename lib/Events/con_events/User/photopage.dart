import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

// ignore: must_be_immutable
class PhotoPage extends StatefulWidget {
  late String name;
  late String rollno;
  late String topic;
  final String url1;
  final String url2;
  PhotoPage(
      {Key? key,
      required this.name,
      required this.rollno,
      required this.topic,
      required this.url1,
      required this.url2})
      : super(key: key);
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    String top = widget.topic;
    String nam = widget.name;
    String roll = widget.rollno;
    String url1 = widget.url1;
    String url2 = widget.url2;
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(url1),
          ),
          body: Column(
            children: [
              Container(
                child: PhotoView(
                  imageProvider: NetworkImage(url1),
                ),
                height: 100,
                width: 100,
              ),
              // Expanded(
              //     child: Image(
              //   image: NetworkImage(url2),
              // )),
            ],
          )),
    );
  }
}
