import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/confirm_registeration_controller.dart';
import 'package:flutter_application_1/component/custume_button.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      appBar: AppBar(
        title: const Text(
          "Confirm Registration",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
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
            const Text(
              "Konfirmasi Data",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Periksa kembali data yang kamu masukkan.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
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
                  const Text(
                    "Data Pengguna",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Username: ${controller.username}",
                    style: const TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 14),

                  Text(
                    "Nama Lengkap: ${controller.nama_lengkap}",
                    style: const TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 14),

                  Text(
                    "Email: ${controller.email}",
                    style: const TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 14),

                  Text(
                    "Jenis Kelamin: ${controller.gender}",
                    style: const TextStyle(fontSize: 16),
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
              child: Text(
                "Pastikan semua data sudah benar.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}