import 'package:get/get.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:flutter_application_1/pages/confirm_registration_page.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm-registration';

  static final myPages = [
    GetPage(
      name: registration,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => const ConfirmRegistrationPage(),
    ),
  ];
}