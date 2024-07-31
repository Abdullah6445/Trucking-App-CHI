import 'package:chi_trucking_app_factory/factory_view_pages/dashboard_page/dashboard_pages_vu.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/filter_menu_page/filter_menu_vu.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/filter_menu_page/filter_more_menu/origin_pages/origin_page_vu.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/login_page/login_page_vu.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/setting_page/setting_page_vu.dart';
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
      home: FilterPageVU(),
    );
  }
}


/*

login page done
Setting page done
Filter page done
origin Page done

*/