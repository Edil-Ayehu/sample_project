import 'package:get/get.dart';

class EmailValidationController extends GetxController {
  RxString email = ''.obs;

  bool get isEmailValid {
    final emailRegex = RegExp(r'^[\w-]+@[a-zA-Z\d]+\.[a-zA-Z]+$');
    return emailRegex.hasMatch(email.value);
  }

  void setEmail(String value) {
    email.value = value;
  }
}
