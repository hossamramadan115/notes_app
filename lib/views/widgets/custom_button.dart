import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.text});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff27445F)),
          ),
        ),
      ),
    );
  }
}
