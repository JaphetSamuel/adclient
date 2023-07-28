import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ReservationWizardController extends GetxController {
  //TODO: Implement ReservationWizardController
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
