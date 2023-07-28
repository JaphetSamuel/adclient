import 'package:adclient/app/modules/Notif/providers/notification_provider.dart';
import 'package:get/get.dart';

import '../controllers/notif_controller.dart';

class NotifBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotifController>(
      () => NotifController(),
    );
    Get.lazyPut<NotificationProvider>(() => NotificationProvider());
  }
}
