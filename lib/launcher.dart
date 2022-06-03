import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tokokopi/constans.dart';
import 'package:tokokopi/users/landingpage.dart' as users;
import 'package:tokokopi/auth/register.dart' as auth;
import 'package:tokokopi/auth/login.dart' as login;

class LauncherPage extends StatefulWidget {
  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (_) => new users.LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.bg3, Palette.bg3],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: Image.asset(
                'images/logo.png',
                width: 200,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
