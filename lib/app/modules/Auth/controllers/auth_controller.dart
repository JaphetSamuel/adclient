import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum AuthMode { EMAIL, PHONE }

class AuthController extends GetxController {
  //TODO: Implement AuthController

  final count = 0.obs;

  Rx<AuthMode> authMode = AuthMode.EMAIL.obs;
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void changeAuthMode(AuthMode mode) {
    authMode.value = mode;
    update(['pageMode']);
  }

  void cancel(){
    Get.toNamed('/root');
  }
}
