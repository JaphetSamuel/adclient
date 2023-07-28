import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../composants/Plan/PlanCard.dart';
import '../controllers/plan_controller.dart';

class PlanView extends GetView<PlanController> {
  const PlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Mes Plans'),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          PlanCard(),
          PlanCard(),
          PlanCard(),
          PlanCard(),
          PlanCard(),
        ],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return createModal();
                }, isScrollControlled: true);
          },
          child: Text("Creer un plan")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }

  Widget createModal() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(8),
        height: 200,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            "Creer un plan".text.xl2.make(),
            TextField(
              decoration: InputDecoration(hintText: "Titre du plan"),
            ).px(8),
            ElevatedButton(onPressed: () {}, child: Text("Creer")).px(8)
          ],
        ),
      ),
    );
  }


}
