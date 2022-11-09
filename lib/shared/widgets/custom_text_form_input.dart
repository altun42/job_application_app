import 'package:flutter/material.dart';

class CustomTextformInput extends StatelessWidget {
  final String text;
  final String hintText;

  const CustomTextformInput({required this.hintText, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Color(0xffFEFCFC),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(0xffC4C4C4),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              fillColor: Colors.white,
              filled: true,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
