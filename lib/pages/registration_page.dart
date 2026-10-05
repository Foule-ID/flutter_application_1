import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custume_textfield.dart';
import 'package:flutter_application_1/component/custume_dropdown.dart';
import 'package:flutter_application_1/component/custume_numberfield.dart';
import 'package:flutter_application_1/component/custume_button.dart';
import 'package:get/get.dart';

import '../routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    TextEditingController txtKonfirmasiPassword = TextEditingController();

    String? gender;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        title: const Text(
          "Register",
          style: TextStyle(fontWeight: FontWeight.bold),
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
              "Buat Akun",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "Lengkapi data di bawah untuk membuat akun baru.",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 25),

            const Text(
              "Username",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            CustomTextField(
              myHint: "Masukkan Username",
              txtcontroller: txtUsername,
            ),

            const SizedBox(height: 18),

            const Text(
              "Nama Lengkap",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            CustomTextField(
              myHint: "Masukkan Nama Lengkap",
              txtcontroller: txtNama,
            ),

            const SizedBox(height: 18),

            const Text(
              "Email",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            CustomTextField(myHint: "Masukkan Email", txtcontroller: txtEmail),

            const SizedBox(height: 18),

            const Text(
              "Jenis Kelamin",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            CustomDropDown(
              myHint: "Pilih Jenis Kelamin",
              myList: ["Laki-laki", "Perempuan"],
              onChanged: (value) {
                gender = value;
              },
            ),

            const SizedBox(height: 18),

            const Text(
              "Nomor WhatsApp",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            CustumeNumberField(
              myHint: "Masukkan Nomor WhatsApp",
              txtcontroller: txtNoWa,
            ),

            const SizedBox(height: 18),

            const Text(
              "Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            CustomTextField(
              myHint: "Masukkan Password",
              txtcontroller: txtPassword,
              obscureText: true,
            ),

            const SizedBox(height: 18),

            const Text(
              "Konfirmasi Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            CustomTextField(
              myHint: "Konfirmasi Password",
              txtcontroller: txtKonfirmasiPassword,
              obscureText: true,
            ),

            const SizedBox(height: 30),

            CustumeButton(
              text: "Register",
              width: double.infinity,
              height: 52,
              borderRadius: 12,
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              onPressed: () {
                Get.toNamed(
                  Routes.confirmRegistration,
                  arguments: {
                    "username": txtUsername.text,
                    "nama_lengkap": txtNama.text,
                    "email": txtEmail.text,
                    "gender": gender,
                    "nomor_wa": txtNoWa.text,
                    "password": txtPassword.text,
                    "konfirmasi_password": txtKonfirmasiPassword.text,
                  },
                );
              },
            ),

            const SizedBox(height: 15),

            const Center(
              child: Text(
                "Pastikan data yang kamu masukkan sudah benar.",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
