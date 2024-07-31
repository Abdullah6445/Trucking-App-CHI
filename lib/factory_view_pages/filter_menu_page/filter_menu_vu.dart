import 'package:chi_trucking_app_factory/custom_widgets/custom_large_elevated_button.dart';
import 'package:chi_trucking_app_factory/custom_widgets/custom_text_field.dart';
import 'package:chi_trucking_app_factory/factory_view_pages/filter_menu_page/filter_menu_vm.dart';
import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Truck Type",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              const CustomTextFormFieldRectangular(
                hintTextt: "Truck Type",
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Origin",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              const CustomTextFormFieldRectangular(
                hintTextt: "Select origin",
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Destination",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              const CustomTextFormFieldRectangular(
                hintTextt: "Select destination",
              ),
              const Spacer(),
              CustomLargeElevatedButton(
                buttonText: "Confirm",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  FilterPageVM viewModelBuilder(BuildContext context) {
    return FilterPageVM();
  }
}
