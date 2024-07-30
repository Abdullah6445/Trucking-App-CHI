import 'package:chi_trucking_app_factory/custom_widgets/custom_text_field.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/login_page/login_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginPageVU extends StackedView<LoginPageVM> {
  LoginPageVU({super.key});

  LoginPageVM loginObj = LoginPageVM();

  @override
  Widget builder(BuildContext context, LoginPageVM viewModel, Widget? child) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .1,
              ),
              Text(
                loginObj.welcomeText,
                style: loginObj.welcomeTextStyle,
              ),
              Text(loginObj.descriptionText),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .05,
              ),
              const CustomTextFormField(hintTextt: "Email"),
              const CustomTextFormField(hintTextt: "Password"),
              TextButton(
                  onPressed: () {}, child: Text(loginObj.forgetButtonText)),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .1,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    minimumSize: Size(double.infinity,
                        MediaQuery.sizeOf(context).height * .06),
                  ),
                  onPressed: () {},
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginPageVM viewModelBuilder(BuildContext context) {
    return LoginPageVM();
  }
}
