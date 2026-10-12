import 'package:flutter_application_1/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  List<MakananModel> dataMakanan = [
  MakananModel(
    namaMakanan: "Mie ayam",
    harga: "9.000",
    review: "4.8/5",
    detail: "Mie ayam dengan potongan ayam berbumbu dan kuah kaldu gurih.",
    gambar: "lib/assets/images/mie_ayam.jpeg",
  ),
  MakananModel(
    namaMakanan: "Soto sapi",
    harga: "12.000",
    review: "4.7/5",
    detail: "Soto sapi dengan kuah rempah dan potongan daging sapi.",
    gambar: "lib/assets/images/soto_sapi.jpeg",
  ),
  MakananModel(
    namaMakanan: "Ayam bakar",
    harga: "15.000",
    review: "4.9/5",
    detail: "Ayam berbumbu yang dibakar dan disajikan bersama pelengkap.",
    gambar: "lib/assets/images/ayam_bakar.jpeg",
  ),
  MakananModel(
    namaMakanan: "Soto Ayam",
    harga: "15.000",
    review: "4.9/5",
    detail: "Soto ayam dengan kuah rempah dan potongan daging ayam.",
    gambar: "lib/assets/images/soto_ayam.jpeg",
  ),
];
}
