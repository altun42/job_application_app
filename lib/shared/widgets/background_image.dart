import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
      child: Image.asset(
        "assets/images/rectangle.png",
        height: 26.h,
        width: double.infinity,
      ),
    );
  }
}
