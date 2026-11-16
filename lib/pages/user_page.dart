import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/user_controller.dart';
import 'package:get/get.dart';

class ListUserPage extends StatelessWidget {
  ListUserPage({super.key});
  
  final controller = Get.put(UserController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List User"),
      ),
      body: Obx(() {
        if (controller.isLoading.value){
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.userList.isEmpty){
          return const Center(child: Text("No Users Found"));
        }

        return ListView.builder(
          itemCount : controller.userList.length,
          itemBuilder: (context, index){
            final user = controller.userList[index];

            return Card (
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar)
                ),
                title: Text("${user.firstName} ${user.lastName}"),
                subtitle: Text(user.email),
              )
            );
          }
        );
      })
    );
  }
}