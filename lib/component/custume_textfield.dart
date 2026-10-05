import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String myHint;
  final TextEditingController txtcontroller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.myHint,
    required this.txtcontroller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}