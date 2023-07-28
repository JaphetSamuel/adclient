import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  //TODO: Implement RootController

  final count = 0.obs;

  late PageController pageController;
  RxInt selectItem = 2.obs;
  @override
  void onInit() {
   pageController = PageController(initialPage: 2) ;
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

  void onSelectItem(int item){
    selectItem.value = item;
    pageController.jumpToPage(item);
  }
}
