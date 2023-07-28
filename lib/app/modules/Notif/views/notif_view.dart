import 'package:adclient/app/composants/NotificationTile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/notif_controller.dart';
import '../notification_model.dart';
import '../providers/notification_provider.dart';

class NotifView extends GetView<NotifController> {
  const NotifView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          VxScrollHorizontal(
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NotificationFilterChip(
                        label: "Tous",
                        number: controller.allCount(),
                        selected: controller.selectedFilterChip.value == 1,
                        onSelected: (isSelect) {
                          controller.selectFilterChip(1);
                        }),
                    NotificationFilterChip(
                        label: "Reservation",
                        number: controller.reservation_count.value,
                        selected: controller.selectedFilterChip.value == 2,
                        onSelected: (isSelect) {
                          controller.selectFilterChip(2);
                        }),
                    NotificationFilterChip(
                        label: "Alert",
                        number: controller.allCount(),
                        selected: controller.selectedFilterChip.value == 3,
                        onSelected: (isSelect) {
                          controller.selectFilterChip(3);
                        }),
                    NotificationFilterChip(
                        label: "Promotion",
                        number: controller.allCount(),
                        selected: controller.selectedFilterChip.value == 4,
                        onSelected: (isSelect) {
                          controller.selectFilterChip(4);
                        }),
                  ],
                )),
          ),
          Expanded(
            flex: 2,
            child: FutureBuilder(
              future: controller.provider.getNotificationList(),
              builder: (ctxt, snap){
                if (snap.hasError) return "Désolé une erreur s'est produite".text.color(Colors.grey).make();

                if(snap.hasData){
                  List<Notifications> datas = snap.data as List<Notifications>;

                  return ListView.builder(
                    itemCount: datas.count(),
                      itemBuilder: (c,i){
                    return NotificationTile(notification:datas[i]);
                  });
                }

                return const Center(child:CircularProgressIndicator());
              },
            )
          )
        ],
      ),
    );
  }

  Widget NotificationFilterChip(
      {required String label,
      bool selected = false,
        int number = 0,
      required void Function(bool)? onSelected}) {

    final String numberStr = number == 0 ? "": number.toString();

    return FilterChip(
      onSelected: onSelected,
      label: "$label ($numberStr)"
          .text
          .color(Colors.white)
          .make(),
      // backgroundColor: Colors.redAccent,
      selectedColor: Colors.redAccent,
      disabledColor: Colors.black,
      selected: selected,
    );
  }
}
