import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custume_button.dart';
import 'package:flutter_application_1/component/custume_textfield.dart';
import 'package:flutter_application_1/component/custume_textview.dart';

class KalkulatorPage extends StatelessWidget {
  const KalkulatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController angka1Controller = TextEditingController();
    final TextEditingController angka2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(
              myHint: "Masukkan Angka 1",
              txtcontroller: angka1Controller,
            ),

            const SizedBox(height: 20),

            CustomTextField(
              myHint: "Masukkan Angka 2",
              txtcontroller: angka2Controller,
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustumeButton(
                  text: "+",
                  backgroundColor: Colors.blue,
                  onPressed: () {},
                ),

                const SizedBox(width: 8),

                CustumeButton(
                  text: "-",
                  backgroundColor: Colors.red,
                  onPressed: () {},
                ),

                const SizedBox(width: 8),

                CustumeButton(
                  text: "x",
                  backgroundColor: Colors.green,
                  onPressed: () {},
                ),

                const SizedBox(width: 8),

                CustumeButton(
                  text: "/",
                  backgroundColor: Colors.purple,
                  onPressed: () {},
                ),
              ],
            ),

            const SizedBox(height: 30),

            const CustomText(
              text: "Hasil",
              fontSize: 20,
              color: Colors.black,
            ),

            const SizedBox(height: 10),

            const CustomText(
              text: "0",
              fontSize: 30,
              color: Colors.black,
            ),

            const SizedBox(height: 20),

            CustumeButton(
              text: "RESET",
              backgroundColor: Colors.red,
              textColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              width: 150,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
