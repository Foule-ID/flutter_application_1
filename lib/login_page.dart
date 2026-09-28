import 'package:flutter_application_1/component/custume_textfield.dart';
import 'package:flutter_application_1/component/custume_textview.dart';
import 'package:flutter_application_1/component/custume_button.dart';
import 'package:flutter/material.dart';
import 'kalkulator_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page")),
      body: Column(
        children: [
          CustomText(
            text: "Welcome to application $statusLogin",
            fontSize: 20,
            color: const Color.fromARGB(255, 191, 19, 19),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              myHint: "input username",
              txtcontroller: txtUsername,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextField(
              myHint: "input password",
              txtcontroller: txtPassword,
            ),
          ),

          CustumeButton(
              text: "Login",
              fontSize: 20,
              textColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 30, 175, 44),
              width: 100,
              borderRadius: 10,
              onPressed: () {
                setState(() {
                  String username = txtUsername.text.toString();
                  String password = txtPassword.text.toString();
                  if (username == "admin" && password == "admin") {
                    statusLogin = "admin";
                    print("sukses login");
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KalkulatorPage(),
                  ),
                  );
                  } else {
                    statusLogin = "failed";
                    print("gagal login");
                  }
                });
              },
            ),
        ],
      ),
    );
  }
}