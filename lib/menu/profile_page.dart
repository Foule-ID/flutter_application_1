import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custume_textview.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const CustomText(
          text: "Profile",
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            Stack(
              children: [
                const CircleAvatar(
                  radius: 75,
                  backgroundColor: Color(0xFFECE5DD),
                  child: Icon(Icons.person, size: 100, color: Colors.white),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Color(0xFF128C7E),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(Icons.person, color: Colors.grey, size: 28),
              ),
              title: const CustomText(
                text: "Name",
                fontSize: 14,
                color: Colors.grey,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  const CustomText(
                    text: "Arhaqi FadilGaffari",
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 8),
                  const CustomText(
                    text: "This is not your username or pin. This name will be visible to your WhatsApp contacts.",
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ],
              ),
              trailing: const Icon(Icons.edit, color: Color(0xFF128C7E)),
            ),

            const Padding(padding: EdgeInsets.only(left: 70), child: Divider()),

            ListTile(
              leading: const Icon(
                Icons.info_outline,
                color: Colors.grey,
                size: 28,
              ),
              title: const CustomText(
                text: "About",
                fontSize: 14,
                color: Colors.grey,
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: CustomText(
                  text: "Siswa SMK Raden Umar Said",
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              trailing: const Icon(Icons.edit, color: Color(0xFF128C7E)),
            ),

            const Padding(padding: EdgeInsets.only(left: 70), child: Divider()),

            ListTile(
              leading: const Icon(Icons.phone, color: Colors.grey, size: 28),
              title: const CustomText(
                text: "Phone",
                fontSize: 14,
                color: Colors.grey,
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: CustomText(
                  text: "+62 812-3456-7890",
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
