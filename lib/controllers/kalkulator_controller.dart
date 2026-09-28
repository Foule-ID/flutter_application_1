import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  TextEditingController txtangka1 = TextEditingController();
  TextEditingController txtangka2 = TextEditingController();

  var hasilHitung = 0.0.obs;

  bool validasiInput() {
    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
      Get.snackbar(
        "Warning",
        "Angka 1 dan Angka 2 wajib diisi",
      );
      return false;
    }

    return true;
  }

  void tambah() {
    if (!validasiInput()) return;

    double angka1 = double.parse(txtangka1.text);
    double angka2 = double.parse(txtangka2.text);

    hasilHitung.value = angka1 + angka2;
  }

  void kurang() {
    if (!validasiInput()) return;

    double angka1 = double.parse(txtangka1.text);
    double angka2 = double.parse(txtangka2.text);

    hasilHitung.value = angka1 - angka2;
  }

  void kali() {
    if (!validasiInput()) return;

    double angka1 = double.parse(txtangka1.text);
    double angka2 = double.parse(txtangka2.text);

    hasilHitung.value = angka1 * angka2;
  }

  void bagi() {
    if (!validasiInput()) return;

    double angka1 = double.parse(txtangka1.text);
    double angka2 = double.parse(txtangka2.text);

    if (angka2 == 0) {
      Get.snackbar(
        "Warning",
        "Angka 2 tidak boleh 0",
      );
      return;
    }

    hasilHitung.value = angka1 / angka2;
  }

  void reset() {
    txtangka1.clear();
    txtangka2.clear();
    hasilHitung.value = 0;
  }

  @override
  void onClose() {
    txtangka1.dispose();
    txtangka2.dispose();
    super.onClose();
  }
}