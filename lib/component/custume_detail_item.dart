import 'package:flutter/material.dart';

class CustumeDetailItem extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;
  final double valueFontSize;

  const CustumeDetailItem({
    super.key,
    required this.label,
    required this.value,
    this.valueColor = Colors.black,
    this.valueFontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          Text(
            value,
            style: TextStyle(
              fontSize: valueFontSize,
              color: valueColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
