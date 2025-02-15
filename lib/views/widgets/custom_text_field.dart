import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({this.maxlines = 1, required this.hintText});

  final int maxlines;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hintText,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
