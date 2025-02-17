import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});

  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.06),
        borderRadius: BorderRadius.circular(16),
      ),
      // color: Colors.white,
      child: Center(
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 28,
            )),
      ),
    );
  }
}
