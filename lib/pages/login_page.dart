import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/component/custume_textfield.dart';
import 'package:flutter_application_1/component/custume_textview.dart';
import 'package:flutter_application_1/component/custume_button.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override       
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          const CustomText(
            text: "Welcome to application",
            fontSize: 20,
            color: Color.fromARGB(255, 191, 19, 19),
          ),
          
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(
              myHint: "input username",
              txtcontroller: controller.txtUsername,
            ),
          ),
          
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(
              myHint: "input password",
              txtcontroller: controller.txtPassword,
            ),
          ),

          const SizedBox(height: 20),

          Obx(() => controller.isLoading.value 
            ? Center(child: CircularProgressIndicator()) 
            : CustumeButton(
                text: "Login",
                fontSize: 20,
                textColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 30, 175, 44),
                width: 100,
                borderRadius: 10,
                onPressed: () {
                  controller.login();
                },
              ),
          ),
        ],
      ),
    );
  }
}