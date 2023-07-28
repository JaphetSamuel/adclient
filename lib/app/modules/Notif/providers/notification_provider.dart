import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../notification_model.dart';

class NotificationProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Notifications.fromJson(map);
      if (map is List)
        return map.map((item) => Notifications.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'http://192.168.89.163:3000/';
  }

  Future<Notifications?> getNotification(int id) async {
    final response = await get('notifications/$id');
    return response.body;
  }

  Future<List<Notifications>?> getNotificationList() async {
    final response = await get('notifications/');
    if (kDebugMode) {
      print(response.request!.url.toString());
      print(response.body);
    }
    return response.body;
  }

  Future<Response<Notifications>> postNotification(
          Notifications notification) async =>
      await post('notifications', notification);
  Future<Response> deleteNotification(int id) async =>
      await delete('notifications/$id');
}
