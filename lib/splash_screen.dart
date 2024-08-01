import 'dart:ui';

import 'package:chi_trucking_app_factory/factory_view_pages/login_page/login_page_vu.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPageVU(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6B4EFF),
      body: Center(
          child: Text(
        "Trucking App",
        style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.sizeOf(context).height * .05,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
