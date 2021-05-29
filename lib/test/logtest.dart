import 'package:flutter/material.dart';
import 'network.dart';

class Lol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sen',
      ),
      home: Developer(),
    );
  }
}