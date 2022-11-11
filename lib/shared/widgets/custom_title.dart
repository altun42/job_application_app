import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  const CustomTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 23.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
