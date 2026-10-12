import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/confirm_registeration_controller.dart';
import 'package:flutter_application_1/component/custume_button.dart';
import 'package:flutter_application_1/component/custume_textview.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        title: const CustomText(
          text: "Confirm Registration",
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: "Konfirmasi Data",
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),

            const SizedBox(height: 5),

            const CustomText(
              text: "Periksa kembali data yang kamu masukkan.",
              fontSize: 14,
              color: Colors.grey,
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Data Pengguna",
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),

                  const SizedBox(height: 20),

                  CustomText(
                    text: "Username: ${controller.username}",
                    fontSize: 16,
                    color: Colors.black,
                  ),

                  const SizedBox(height: 14),

                  CustomText(
                    text: "Nama Lengkap: ${controller.nama_lengkap}",
                    fontSize: 16,
                    color: Colors.black,
                  ),

                  const SizedBox(height: 14),

                  CustomText(
                    text: "Email: ${controller.email}",
                    fontSize: 16,
                    color: Colors.black,
                  ),

                  const SizedBox(height: 14),

                  CustomText(
                    text: "Jenis Kelamin: ${controller.gender}",
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            CustumeButton(
              text: "OK",
              width: double.infinity,
              height: 52,
              borderRadius: 12,
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              onPressed: () {
                Get.back();
              },
            ),

            const SizedBox(height: 15),

            const Center(
              child: CustomText(
                text: "Pastikan semua data sudah benar.",
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
