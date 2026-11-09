import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/login_model.dart';
import 'package:flutter_application_1/routes.dart';

class LoginController extends GetxController {

    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    
    var loginModel = Rxn<LoginResponse>();
    var isLoading = false.obs;



    void login() async{
      if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
        Get.snackbar("Error", "Username dan Password tidak boleh kosong");

      }else{
        
        try{

          isLoading.value = true;
          final url = Uri.parse("https://mediadwi.com/api/latihan/login");

          final response = await http.post(url, body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString()
          });

          isLoading.value = false;
          if(response.statusCode == 200){
            // final data = jsonDecode(response.body);
            loginModel.value = loginResponseFromJson(response.body);
            // if(data['status'] == true){
            //   Get.snackbar("Success", data['message']);

            if(loginModel.value?.status == true){

              Get.snackbar("Success", loginModel.value!.message);

              Get.offNamed(Routes.main_menu);
            }else{
              Get.snackbar("Failed", loginModel.value?.message ?? "Login failed");
            }
          }else{
            Get.snackbar("failed", "cek internet connection");
          }

        }catch (e) {
          isLoading.value = false;
          Get.snackbar("Error", e.toString());
        }

      }
    }

}