import 'package:chi_trucking_app_factory/custom_widgets/custom_card.dart';
import 'package:chi_trucking_app_factory/deletable_pages/homepage_vu.dart';
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
      home: CustomCard(),
    );
  }
}


/*

login page done
Setting page done
Filter page done
origin Page done
Submit page pic done

*/