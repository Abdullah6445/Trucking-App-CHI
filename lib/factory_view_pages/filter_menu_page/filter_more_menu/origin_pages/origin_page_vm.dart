import 'dart:ui';

import 'package:stacked/stacked.dart';

class OriginPageVM extends BaseViewModel {
  String welcomeText = "Welcome back.";
  String descriptionText =
      "Please enter your credentials to access your account";

  String forgetButtonText = "Forgot password?";

  TextStyle welcomeTextStyle = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 30,
  );
}
