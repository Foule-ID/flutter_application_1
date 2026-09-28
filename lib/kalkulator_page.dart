import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custume_button.dart';
import 'package:flutter_application_1/component/custume_textview.dart';
import 'package:flutter_application_1/controllers/kalkulator_controller.dart';
import 'package:flutter_application_1/component/custume_numberfield.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustumeNumberField(
              myHint: "Masukkan Angka 1",
              txtcontroller: controller.txtangka1,
            ),

            const SizedBox(height: 20),

            CustumeNumberField(
              myHint: "Masukkan Angka 2",
              txtcontroller: controller.txtangka2,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustumeButton(
                  text: "+",
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    controller.tambah();
                  },
                ),
                const SizedBox(width: 8),
                CustumeButton(
                  text: "-",
                  backgroundColor: Colors.red,
                  onPressed: () {
                    controller.kurang();
                  },
                ),
                const SizedBox(width: 8),
                CustumeButton(
                  text: "x",
                  backgroundColor: Colors.green,
                  onPressed: () {
                    controller.kali();
                  },
                ),
                const SizedBox(width: 8),
                CustumeButton(
                  text: "/",
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    controller.bagi();
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            const CustomText(text: "Hasil", fontSize: 20, color: Colors.black),
            const SizedBox(height: 10),

            Obx(
              () => Text(
                controller.hasilHitung.value.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            CustumeButton(
              text: "RESET",
              backgroundColor: Colors.red,
              textColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              width: 150,
              onPressed: () {
                controller.reset();
              },
            ),
          ],
        ),
      ),
    );
  }
}
