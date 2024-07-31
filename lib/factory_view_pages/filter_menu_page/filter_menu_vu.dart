import 'package:chi_trucking_app_factory/custom_widgets/custom_large_elevated_button.dart';
import 'package:chi_trucking_app_factory/custom_widgets/custom_text_field.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/filter_menu_page/filter_menu_vm.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/filter_menu_page/filter_more_menu/origin_pages/origin_page_vu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class FilterPageVU extends StackedView<FilterPageVM> {
  @override
  Widget builder(BuildContext context, FilterPageVM viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        title: const Text(
          "Filter",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Truck Type",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            CustomTextFormFieldRectangular(
                hintTextt: "Truck Type",
                suffixIconn: IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))),
            SizedBox(
              height: 5,
            ),
            Text(
              "Origin",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            CustomTextFormFieldRectangular(
                readOnlyy: true,
                onTapp: () {
                  Get.to(OriginPageVU());
                },
                hintTextt: "Select origin",
                suffixIconn: IconButton(
                    onPressed: () {
                      Get.to(OriginPageVU());
                    },
                    icon: Icon(Icons.keyboard_arrow_right))),
            SizedBox(
              height: 5,
            ),
            Text(
              "Destination",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            CustomTextFormFieldRectangular(
                onTapp: () {
                  Get.to(OriginPageVU());
                },
                readOnlyy: true,
                hintTextt: "Select destination",
                suffixIconn: IconButton(
                    onPressed: () {
                      Get.to(OriginPageVU());
                    },
                    icon: Icon(Icons.keyboard_arrow_right))),
            Spacer(),
            CustomLargeElevatedButton(buttonText: "Confirm", onTap: () {})
          ]),
        ),
      ),
    );
  }

  @override
  FilterPageVM viewModelBuilder(BuildContext context) {
    return FilterPageVM();
  }
}
