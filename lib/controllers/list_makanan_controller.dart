import 'package:flutter_application_1/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  List<MakananModel> dataMakanan = [
  MakananModel(
    namaMakanan: " Nasi Goreng Spesial",
    harga: "25.000",
    review: "4.8/5",
    detail: "Nasi goreng spesial dengan bumbu khas dan tambahan telur.",
    gambar: "assets/images/nasi_goreng_spesial.jpeg",
  ),
  MakananModel(
    namaMakanan: "Ayam Bakar Madu",
    harga: "30.000",
    review: "4.7/5",
    detail: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
    gambar: "assets/images/ayam_bakar_madu.jpeg",
  ),
  MakananModel(
    namaMakanan: " Sate Ayam Madura",
    harga: "28.000",
    review: "4.9/5",
    detail: " 10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
    gambar: "assets/images/sate_ayam_madura.jpeg",
  ),
  MakananModel(
    namaMakanan: "Mie Ayam Bakso",
    harga: "20.000",
    review: "4.9/5",
    detail: " Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
    gambar: "assets/images/soto_ayam.jpeg",
  ),
  MakananModel(
    namaMakanan: " Es Teh Manis Jumbo",
    harga: "8.000",
    review: "4.8/5",
    detail: " Minuman teh melati segar dengan gula asli dan es batu kristal.",
    gambar: "assets/images/nasi_goreng.jpeg",
  ),
];
}
