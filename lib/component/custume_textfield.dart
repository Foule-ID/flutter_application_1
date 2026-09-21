import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  //variabel yang di perlukan
  final String myHint;
  final TextEditingController txtcontroller;
  const CustomTextField({super.key, required this.myHint, required this.txtcontroller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      decoration: InputDecoration(
        hint: Text(myHint),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}