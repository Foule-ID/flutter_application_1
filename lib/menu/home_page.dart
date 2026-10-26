import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/list_makanan_controller.dart';
import 'package:flutter_application_1/component/custume_makanan_card.dart';
import 'package:flutter_application_1/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      
      appBar: AppBar(
        title: const Text(
          "Rekomendasi Menu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: controller.dataMakanan.isEmpty
          ? const Center(
              child: Text(
                "Belum ada makanan",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, 
                  itemCount: controller.dataMakanan.length,
                  itemBuilder: (context, index) {
                    final makanan = controller.dataMakanan[index];
                    return Container(
                      width: 280,
                      margin: const EdgeInsets.only(left: 16, right: 8),
                      child: CustumeMakananCard(
                        makanan: makanan,
                        onTap: () {
                          Get.toNamed(Routes.detail_makanan, arguments: {'makanan': makanan});
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
    );
  }
}