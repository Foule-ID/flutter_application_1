import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_application_1/controllers/list_makanan_controller.dart';
import 'package:flutter_application_1/component/custume_makanan_card.dart';
import 'package:flutter_application_1/pages/detail_makanan_page.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      appBar: AppBar(
        title: const Text(
          "List Makanan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: controller.dataMakanan.isEmpty
          ? const Center(
              child: Text(
                "Belum ada makanan",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: controller.dataMakanan.length,

              itemBuilder: (context, index) {
                final makanan = controller.dataMakanan[index];

                return CustumeMakananCard(
                  makanan: makanan,

                  onTap: () {
                    Get.to(() => DetailMakananPage(makanan: makanan));
                  },
                );
              },
            ),
    );
  }
}
