import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onTap;
  final Color color;
  //final Alignment alignment;
  //final Positioned place;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color = Colors.white,
    this.width = double.infinity,
    //this.alignment = Alignment.bottomLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      color: Colors.black,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Container(
          width: width,
          padding: const EdgeInsets.symmetric(vertical: 20),
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Center(
              child: Text(
            text,
            style: TextStyle(color: color),
          )),
        ),
      ),
    );
  }
}
