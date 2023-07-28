
import 'package:adclient/app/modules/Notif/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Provider extends GetConnect {

  List<Notifications> _list = [];

  @override
  void onInit() {
    httpClient.baseUrl = 'http://localhost:3000';
  }

  void getList() async {
    var url = '/notification';
    var reponse = await get(url,) ;
    print(reponse);
  }
}
