import 'package:flutter/material.dart';

class CustumeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? backgroundColor;
  final double? width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double elevation;

  const CustumeButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
    this.backgroundColor,
    this.width,
    this.height = 48,
    this.borderRadius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.elevation = 2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}