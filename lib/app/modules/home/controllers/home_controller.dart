import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
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

  final pageController = PageController(initialPage: 0);

  void onMomentChanged(int index){
    pageController.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void onLocationChanged(String location){
    pageController.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void onDateChanged(DateTime date){
    pageController.animateToPage(3, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}


