import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custume_textfield.dart';

class IgTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textController;

  const IgTextField({
    super.key,
    required this.hintText,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: CustomTextField(
        myHint: hintText,
        txtcontroller: textController,
      ),
    );
  }
}