import 'package:flutter/material.dart';

// class SubmitPageVU extends StackedView<SubmitPageVM> {
//   @override
//   Widget builder(BuildContext context, SubmitPageVM viewModel, Widget? child) {
//     return CustomDialog().customDialogBox(context);
//   }

//   @override
//   SubmitPageVM viewModelBuilder(BuildContext context) {
//     return SubmitPageVM();
//   }
// }

class CustomDialog {
  customDialogBox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pop();
        });
        return AlertDialog(
          content: Image.asset(fit: BoxFit.cover, "assets/images/submit.png"),
        );
      },
    );
  }
}
