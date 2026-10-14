import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/models/makanan_model.dart';
import 'package:flutter_application_1/component/custume_button.dart';
import 'package:flutter_application_1/component/custume_textview.dart';
import 'package:flutter_application_1/component/custume_detail_item.dart';
import 'package:flutter_application_1/controllers/detail_makanan_controller.dart';

class DetailMakananPage extends StatelessWidget {

  const DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailMakananController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      appBar: AppBar(
        title: const CustomText(
          text: "Detail Makanan",
          fontSize: 20,
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  controller.makanan.gambar,
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: double.infinity,
                      height: 220,
                      color: Colors.blue.shade50,
                      child: const Icon(
                        Icons.restaurant,
                        size: 55,
                        color: Colors.blue,
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),

              CustumeDetailItem(
                label: "Nama Makanan",
                value: controller.makanan.namaMakanan,
                valueFontSize: 22,
              ),

              CustumeDetailItem(
                label: "Harga",
                value: "Rp ${controller.makanan.harga}",
                valueColor: Colors.blue,
                valueFontSize: 20,
              ),

              CustumeDetailItem(label: "Review Makanan", value: controller.makanan.review),

              CustumeDetailItem(label: "Detail Makanan", value: controller.makanan.detail),

              const SizedBox(height: 10),

              CustumeButton(
                text: "Kembali ke List",
                width: double.infinity,
                height: 52,
                borderRadius: 12,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
