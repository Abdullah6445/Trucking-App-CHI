import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintTextt;
  final String? labelTextt;
  final Icon? prefixIconn;
  final Icon? suffixIconn;
  // final Color? iconColors;
  final TextEditingController? controllerr;
  final TextInputType? keyboardType;
  final bool? obscurityy;
  final bool? readOnlyy;
  final String? Function(String?)? validatorrr;

  const CustomTextFormField({
    super.key,
    this.hintTextt,
    this.labelTextt,
    this.prefixIconn,
    this.suffixIconn,
    // this.iconColors = const Color.fromARGB(255, 5, 65, 114),
    this.controllerr,
    this.keyboardType,
    this.obscurityy = false,
    this.readOnlyy = false,
    this.validatorrr,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .07,
        child: TextFormField(
          controller: controllerr,
          obscureText: obscurityy!,
          validator: validatorrr,
          readOnly: readOnlyy!,
          decoration: InputDecoration(
            prefixIcon: prefixIconn,
            // prefixIconColor: iconColors,
            suffixIcon: suffixIconn,
            // suffixIconColor: iconColors,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            hintText: hintTextt,
            labelText: labelTextt,
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
