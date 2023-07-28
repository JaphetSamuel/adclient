import 'package:get/get.dart';

import '../controllers/appartement_controller.dart';

class AppartementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppartementController>(
      () => AppartementController(),
    );
  }
}
