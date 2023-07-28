import 'package:get/get.dart';

import '../controllers/reservation_wizard_controller.dart';

class ReservationWizardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReservationWizardController>(
      () => ReservationWizardController(),
    );
  }
}
