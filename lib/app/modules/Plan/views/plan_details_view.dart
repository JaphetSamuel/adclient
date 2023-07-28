
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ionicons/ionicons.dart';

import 'package:get/get.dart';

import '../../../composants/Plan/PlanDetailCard.dart';
import '../controllers/plan_details_controller.dart';

class PlanDetailsView extends GetView<PlanDetailsController> {
  const PlanDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('titre du plan'),
        centerTitle: true,
        leading: const BackButton(color: Colors.red,),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Ionicons.send_outline, color: Colors.red,) )
        ],
      ),
      body:ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          PlanDetailCard(),
          PlanDetailCard(),
          PlanDetailCard(),
          PlanDetailCard(),
        ]
      ),
    );
  }

}
