import 'package:get/get.dart';

import '../../Location/controllers/location_controller.dart';
import '../controllers/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(
      () => RootController(),
    );
    Get.lazyPut<LocationController>(
          () => LocationController(),
    );
  }
}
