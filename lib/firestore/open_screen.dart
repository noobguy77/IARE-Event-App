import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/Events/Eventpage/home.dart';
import 'package:untitled/HomeScreen/homescreen.dart';
import 'package:untitled/firestore/register_screen.dart';
import 'package:untitled/firestore/verification.dart';

import 'login_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authLogOut = '/auth-logout';
  static const String authRegister = '/auth-register';
  static const String menu = '/menu';
  static const String authVerify = '/auth-verify';

  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => Login(),
      // authLogOut: (context) => Logout(),
      authRegister: (context) => Register(),
      authVerify: (context) => VerifyScreen(),
      menu: (context) => HomeScreen(),
    };
  }
}

class OpeningView extends StatefulWidget {
  @override
  OpeningViewState createState() => OpeningViewState();
}

class OpeningViewState extends State<OpeningView> {
  OpeningViewState();

  String displayName = "to IARE Fest";

  @override
  // ignore: must_call_super
  void initState() {
    getData();
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      displayName = prefs.getString('displayName')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "images/logo.png",
      height: mq.size.height / 4,
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Color(0xff4b4b87),
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.authLogin);
        },
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Color(0xff4b4b87),
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Register",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.authRegister);
        },
      ),
    );

    final buttons = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton,
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: registerButton,
        ),
      ],
    );

    display() {
      // ignore: unnecessary_null_comparison
      if (displayName != null)
        return Text(
          "Welcome $displayName",
          style: GoogleFonts.odibeeSans(
            fontSize: 50,
          ),
        );
      else
        return Text(
          "Welcome!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: logo,
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 50),
              child: display(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 50),
              child: buttons,
            )
          ],
        ),
      ),
    );
  }
}
