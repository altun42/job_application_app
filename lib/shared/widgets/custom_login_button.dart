import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomLoginButton extends StatelessWidget {
  final Function()? ontop;
  const CustomLoginButton({required this.ontop});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Bounceable(
        onTap: ontop,
        child: Container(
          height: 6.5.h,
          width: 70.w,
          decoration: BoxDecoration(
            color: Color(0xff29B6F6),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Center(
            child: Text(
              "Login",
              style: TextStyle(
                  fontSize: 19.sp,
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
