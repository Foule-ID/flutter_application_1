import 'package:get/get.dart';
import 'package:flutter_application_1/models/User_Model.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
   
   var isLoading = false.obs;
   var userList = <UserData>[].obs;

   @override
   void onInit(){
      super.onInit();
      fetchUsers();
   }

   void fetchUsers() async {
    try{
      isLoading.value = true;
      final url = Uri.parse("https://reqres.in/api/users?page=1");
      final response = await http.get(
        url,
        headers: {'x-api-key': 'reqres-free-v1',}
       );

       if(response.statusCode == 200){
        final result = userModelFromJson(response.body);
        userList.value = result.data;
       }
       else{
        Get.snackbar('Error', 'Failed to fetch users. Status code: ${response.statusCode}');
       }
      }catch (e) {
        Get.snackbar('Error', e.toString());
      } finally {
        isLoading.value = false;
      }
    }
   }
