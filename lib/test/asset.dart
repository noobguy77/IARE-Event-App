import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final urlImage1 = 'images/college.jpg';
    final urlImage2 = 'images/logo.jpg';
    final urlImage3 = 'images/logo.png';

    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16),
      children: <Widget>[
        Image.asset(
          urlImage1,
          height: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 16),
        Image.asset(
          urlImage2,
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 16),
        CircleAvatar(
          backgroundImage: AssetImage(urlImage3),
          radius: 120,
        ),
      ],
    );
  }
}