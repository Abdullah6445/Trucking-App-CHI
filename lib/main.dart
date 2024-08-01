import 'package:chi_trucking_app_factory/custom_widgets/custom_card.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/dashboard_page/dashboard_pages_vu.dart';
import 'package:chi_trucking_app_factory/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Color colorss = const Color(0xff6B4EFF);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorss),
        useMaterial3: false,
      ),
      home: DashboardPageVU(),
    );
  }
}


/*

login page done
Setting page done
Filter page done
origin Page done
Submit page pic done
splash screen done
*/