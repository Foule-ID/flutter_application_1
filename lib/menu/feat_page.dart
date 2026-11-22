import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/feat_controller.dart';

class FeatPage extends StatelessWidget {
  FeatPage({super.key});

  final controller = Get.put(FeatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold
    ( appBar: AppBar(
        title: const Text("List Team"),
      ),
      body: Obx((){
        if (controller.isLoading.value){
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.teamList.isEmpty){
          return const Center(child: Text("No Teams Found"));
        }

        return ListView.builder(
          itemCount : controller.teamList.length,
          itemBuilder: (context, index){
            final team = controller.teamList[index];

            return Card (
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(team.strBadge)
                ),
                title: Text(team.strTeam),
                subtitle: Text(team.strStadium),
              )
            );
          }
        );

      })
    );
  }
}