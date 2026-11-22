import 'package:get/get.dart';
import 'package:flutter_application_1/models/makanan_model.dart';
import 'package:flutter/material.dart';


class DetailMakananController extends GetxController {

    late MakananModel makanan;

    final jumlahController = TextEditingController();
    var subtotal = 0.0.obs;
    var ppn = 0.0.obs;
    var totalBayar = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    makanan = arguments['makanan'] ?? MakananModel(
      namaMakanan: '',
      harga: '',
      review: '',
      detail: '',
      gambar: '',
    );
  }
  
  void hitungTransaksi(){
    int jumlah = int.tryParse(jumlahController.text) ?? 0;

    if(jumlah <= 0){
      Get.snackbar("Peringatan", "jumlah pembelian minimal 1");
      return;
    }

    double hargaSatuan = double.tryParse(makanan.harga.replaceAll('.', '')) ?? 0.0;

    subtotal.value = hargaSatuan * jumlah;
    ppn.value = subtotal.value * 0.11;
    totalBayar.value = subtotal.value + ppn.value;
  }

}