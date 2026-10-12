import 'package:get/get.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:flutter_application_1/pages/confirm_registration_page.dart';
import 'package:flutter_application_1/pages/list_makanan_page.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm-registration';
  static const String list_makanan = '/list_makanan';

  static final myPages = [
    GetPage(
      name: registration,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => const ConfirmRegistrationPage(),
    ),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
  ];
}