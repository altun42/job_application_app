import 'package:flutter/material.dart';

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
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
