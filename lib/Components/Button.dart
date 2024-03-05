import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onTap,
    this.textColor = const Color(0xffffffff),
    this.bgColor = const Color(0xff619EF5),
    required this.text,
    this.height = 45.0,
    this.width = 254.0,
    this.borderRadius = 10.0,
    this.type = ButtonType.primary,
  });

  final VoidCallback onTap;
  final String text;
  final Color textColor;
  final double width;
  final double height;
  final double borderRadius;
  final Color bgColor;
  final ButtonType type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
