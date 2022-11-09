import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class CustomLoginButton extends StatelessWidget {
  final Function()? ontop;
  const CustomLoginButton({required this.ontop});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Bounceable(
        onTap: ontop,
        child: Container(
          height: 48,
          width: 295,
          decoration: BoxDecoration(
            color: Color(0xff29B6F6),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Center(
            child: Text(
              "Login",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
