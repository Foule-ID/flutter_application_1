import 'package:flutter_application_1/pages/login_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:flutter_application_1/pages/confirm_registration_page.dart';
import 'package:flutter_application_1/pages/list_makanan_page.dart';
import 'package:flutter_application_1/pages/detail_makanan_page.dart';
import 'package:flutter_application_1/pages/main_menu.dart';


class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm-registration';
  static const String list_makanan = '/list_makanan';
  static const String detail_makanan = '/detail_makanan';
  static const String main_menu = '/main_menu';
  static const String Login = '/Login';

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
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
    GetPage(name: main_menu, page: () =>  MainMenu()),
    GetPage(name: Login, page: () => LoginPage()),
  ];
}