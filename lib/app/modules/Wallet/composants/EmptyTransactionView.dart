import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class EmptyTransactionView extends StatelessWidget {
  const EmptyTransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Row(

      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.access_time_filled_outlined, color: Colors.grey,).px4(),
        const Text("Aucunes transactions pour le moment")
      ],),).h56(Get.context!);
  }
}
