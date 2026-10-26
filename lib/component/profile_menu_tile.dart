import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custume_textview.dart';

class ProfileMenuTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final Color textColor;
  final VoidCallback onTap;

  const ProfileMenuTile({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    this.textColor = Colors.black, 
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: CustomText(
        text: title,
        fontSize: 16,
        color: textColor,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios, 
        size: 16, 
        color: textColor == Colors.red ? Colors.red : Colors.grey,
      ),
      onTap: onTap,
    );
  }
}