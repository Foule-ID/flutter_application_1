import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custume_textview.dart';
import 'package:flutter_application_1/component/profile_menu_tile.dart'; // Import component yang baru dibikin

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        title: const CustomText(
          text: "Profile",
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            
            const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 16),
            
            const CustomText(
              text: "Arhaqi FadilGaffari", 
              fontSize: 22, 
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 4),
            
            const CustomText(
              text: "Siswa SMK Raden Umar Said",
              fontSize: 14,
              color: Colors.grey,
            ),
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileMenuTile(
                    icon: Icons.person_outline,
                    iconColor: Colors.blue,
                    title: "Edit Profile",
                    onTap: () {},
                  ),
                  const Divider(), 
                  
                  ProfileMenuTile(
                    icon: Icons.settings_outlined,
                    iconColor: Colors.blue,
                    title: "Pengaturan",
                    onTap: () {},
                  ),
                  const Divider(),
                  
                  ProfileMenuTile(
                    icon: Icons.help_outline,
                    iconColor: Colors.blue,
                    title: "Bantuan & Laporan",
                    onTap: () {},
                  ),
                  const Divider(),
                  
                  ProfileMenuTile(
                    icon: Icons.logout,
                    iconColor: Colors.red,
                    title: "Keluar",
                    textColor: Colors.red,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}