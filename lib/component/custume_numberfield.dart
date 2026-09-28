import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustumeNumberField extends StatelessWidget {
  final String myHint;
  final TextEditingController txtcontroller;

  const CustumeNumberField({
    super.key,
    required this.myHint,
    required this.txtcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        hint: Text(myHint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}