import 'package:chi_trucking_app_factory/factory_view_pages/login_page/login_page_vu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Color colorss = const Color(0xff6B4EFF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorss),
        useMaterial3: false,
      ),
      home: LoginPageVU(),
    );
  }
}
