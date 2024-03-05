import 'package:flutter/material.dart';

enum ButtonType { primary, secondary }

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.height,
    this.width,
    required this.text,
    required this.onTap,
    this.type = ButtonType.primary,
  });

  final double? width;
  final double? height;
  final String text;
  final VoidCallback onTap;
  final ButtonType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      // untuk Default Button
      case ButtonType.primary:
        return SizedBox(
          width: width ?? 255,
          height: height ?? 45,
          child: ElevatedButton(
            onPressed: onTap,
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff619EF5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        );
      // untuk Secondary Button
      case ButtonType.secondary:
        return SizedBox(
          width: width ?? 255,
          height: height ?? 45,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
                onPrimary: Color(0xff619EF5),
                side: const BorderSide(
                  color: Color(0xff619EF5),
                  width: 3,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xff619EF5),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
    }
  }
}
