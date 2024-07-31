import 'package:chi_trucking_app_factory/custom_widgets/custom_text_field.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/filter_menu_page/filter_menu_vu.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/filter_menu_page/filter_more_menu/origin_pages/origin_page_vm.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:stacked/stacked.dart';

class OriginPageVU extends StackedView<OriginPageVM> {
  OriginPageVM originObj = OriginPageVM();
  @override
  Widget builder(BuildContext context, OriginPageVM viewModel, Widget? child) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .08,
              ),
              const Text(
                "Select Origin",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Enter your location to find them."),
              const SizedBox(
                height: 10,
              ),
              const CustomTextFormFieldRectangular(
                prefixIconn: Icon(Icons.search),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const ListTile(
                      minLeadingWidth: 5,
                      title: Text("18th Street Islamabad"),
                      subtitle: Text("kashmir Avenue, Hammond, IN"),
                      leading: Icon(Icons.location_on_outlined),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    minimumSize: Size(double.infinity,
                        MediaQuery.sizeOf(context).height * .06),
                  ),
                  onPressed: () {
                    Get.to(FilterPageVU());
                  },
                  child: const Text("Confirm")),
            ],
          ),
        ),
      ),
    );
  }

  @override
  OriginPageVM viewModelBuilder(BuildContext context) {
    return OriginPageVM();
  }
}
