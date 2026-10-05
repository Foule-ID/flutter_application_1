import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String username;
  late String nama_lengkap;
  late String email;
  late String gender;
  late String password;
  late String konfirmasi_password;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    username = arguments['username'] ?? '';
    nama_lengkap = arguments['nama_lengkap'] ?? '';
    email = arguments['email'] ?? '';
    gender = arguments['gender'] ?? '';
    password = arguments['password'] ?? '';
    konfirmasi_password = arguments['konfirmasi_password'] ?? '';
  }
}