import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String myHint;
  final List<String> myList;
  final ValueChanged<String?>? onChanged;

  const CustomDropDown({
    super.key,
    required this.myHint,
    required this.myList,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      items: myList.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}