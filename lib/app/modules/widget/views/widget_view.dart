import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/widget_controller.dart';

class WidgetView extends GetView<WidgetController> {
  const WidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WidgetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WidgetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
