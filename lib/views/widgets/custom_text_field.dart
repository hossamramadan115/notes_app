import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({required this.hintText});
  String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(KPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
