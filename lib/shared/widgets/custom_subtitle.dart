import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomSubtitle extends StatelessWidget {
  final String text;
  const CustomSubtitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xffC4C4C4),
          fontSize: 19.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
