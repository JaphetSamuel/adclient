import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../composants/WizardChoiceLocation.dart';
import '../composants/WizardModalChoiceDate.dart';
import '../composants/WizardPickDate.dart';
import '../controllers/reservation_wizard_controller.dart';

class ReservationWizardView extends GetView<ReservationWizardController> {
  const ReservationWizardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: PageView(
        controller: controller.pageController,
        children: [
          WizardModalChoiceDate(onChanged: (i){
            controller.onMomentChanged(i);
          },),
          WizardChoiceLocation(onChanged: (i){
            controller.onLocationChanged(i);
          }),
          WizardPickDate(),

        ],
      ),
    );
  }
}
