import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LocationController extends GetxController {
  //TODO: Implement LocationController
  TextEditingController searchController = TextEditingController();

  DraggableScrollableController scrollController = DraggableScrollableController();
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
}
