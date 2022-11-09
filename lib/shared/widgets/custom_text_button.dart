import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class CustomTextButton extends StatelessWidget {
  final Color? color;
  final String text;
  final Function()? ontap;
  const CustomTextButton(
      {required this.color, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: ontap,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
