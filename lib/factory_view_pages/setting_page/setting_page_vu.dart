import 'package:chi_trucking_app_factory/custom_widgets/custom_large_elevated_button.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/setting_page/setting_page_vm.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

class SettingPageVU extends StackedView<SettingPageVM> {
  @override
  Widget builder(BuildContext context, SettingPageVM viewModel, Widget? child) {
    return Scaffold(
      // bottomNavigationBar: CustomBottomNavigation(),
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              ListTile(
                minLeadingWidth: 20,
                leading: Icon(Icons.person_2_outlined),
                title: Text("Profile"),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              ListTile(
                // minLeadingWidth: ,
                minLeadingWidth: 20,
                leading: Icon(Icons.lock),
                title: Text("Password"),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomLargeElevatedButton(
                  buttonText: "Log out",
                  onTap: () {},
                ),
              )
              // CustomLargeElevatedB utton(buttonText: buttonText)
            ],
          ),
        ),
      ),
    );
  }

  @override
  SettingPageVM viewModelBuilder(BuildContext context) {
    return SettingPageVM();
  }
}
