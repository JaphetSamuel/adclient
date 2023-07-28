import 'package:adclient/app/modules/Notif/providers/notification_provider.dart';
import 'package:get/get.dart';

class NotifController extends GetxController {
  final NotificationProvider provider = Get.put<NotificationProvider>(NotificationProvider());

  final reservation_count = 2.obs;
  final promotion_count = 2.obs;
  final alert_count = 2.obs;

  final selectedFilterChip = 1.obs;

  void selectFilterChip(int index){
    selectedFilterChip.value = index;
    update();
  }

  int allCount(){
    return reservation_count.value +  promotion_count.value + alert_count.value;
  }

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
}
