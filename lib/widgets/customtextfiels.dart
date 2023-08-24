import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final String label;
  const CustomTextField({
    super.key,
    this.controller,
    required this.hint,
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    var styling = OutlineInputBorder(
        borderSide:
            const BorderSide(width: 3, color: Colors.lightBlue), //<-- SEE HERE
        borderRadius: BorderRadius.circular(50.0));
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        border: const OutlineInputBorder(),
        focusedBorder: styling,
      ),
    );
  }
}
