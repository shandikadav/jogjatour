import 'dart:async';
import 'package:flutter/material.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 2),
        (() => Navigator.pushNamed(context, '/login')));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 271,
          height: 111,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'assets/logo_jtour_blue.png',
          ))),
        ),
      ),
    );
  }
}
