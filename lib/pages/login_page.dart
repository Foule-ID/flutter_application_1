import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/component/ig_textfield.dart';
import 'package:flutter_application_1/component/custume_textview.dart';
import 'package:flutter_application_1/component/custume_button.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black),
                  Row(
                    children: [
                      CustomText(
                        text: "Bahasa Indonesia", 
                        fontSize: 14, 
                        color: Colors.grey.shade600
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade600),
                    ],
                  ),
                  const SizedBox(width: 24),
                ],
              ),
              
              const Spacer(),
              
              Image.asset(
                'assets/images/icon_instagram.jpeg',
                height: 70,
              ),
              const SizedBox(height: 40),
              
              IgTextField(
                hintText: "Nama pengguna, email, atau nomor ponsel",
                textController: controller.txtUsername,
              ),
              const SizedBox(height: 15),
              
              IgTextField(
                hintText: "Kata sandi",
                textController: controller.txtPassword,
              ),
              const SizedBox(height: 15),
              
              Obx(() => controller.isLoading.value
                  ? const CircularProgressIndicator(color: Color(0xFF0064E0))
                  : SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: CustumeButton(
                        text: "Login",
                        fontSize: 15,
                        textColor: Colors.white,
                        backgroundColor: const Color(0xFF0064E0),
                        width: double.infinity,
                        borderRadius: 25,
                        onPressed: () {
                          controller.login();
                        },
                      ),
                    )),
              const SizedBox(height: 20),
              
              const CustomText(
                text: "Lupa kata sandi?",
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
              
              const Spacer(), 

              SizedBox(
                width: double.infinity,
                height: 45,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF0064E0), width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: const CustomText(
                    text: "Buat akun baru",
                    fontSize: 14,
                    color: Color(0xFF0064E0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              
              // Logo Meta
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.all_inclusive, color: Colors.grey.shade800, size: 20),
                  const SizedBox(width: 5),
                  CustomText(
                    text: "Meta",
                    fontSize: 16,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}