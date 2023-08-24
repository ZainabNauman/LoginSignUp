import 'package:flutter/material.dart';

class CustomTextFieldPassword extends StatelessWidget {
  final TextEditingController? controller;
  final bool isObscure = true;
  final String hint;
  final String label;
  const CustomTextFieldPassword({
    super.key,
    required this.hint,
    required this.label,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
    var styling = OutlineInputBorder(
        borderSide:
            const BorderSide(width: 3, color: Colors.lightBlue), //<-- SEE HERE
        borderRadius: BorderRadius.circular(50.0));
    return TextField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        border: const OutlineInputBorder(),
        //enabledBorder: styling,
        focusedBorder: styling,
        //border: styling
      ),
    );
  }
}
