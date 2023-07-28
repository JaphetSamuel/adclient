import 'package:adclient/app/composants/TopCenterBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class WizardModalChoiceDate extends StatelessWidget {
  WizardModalChoiceDate({Key? key,required this.onChanged}) : super(key: key);

  int _choice = 0;

  late ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Dialog(
        alignment: Alignment.bottomCenter,
        insetPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 100),
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
         children: [
           const TopCenterBar(),
           "Reservez pour aujourd'hui ou pour un autre jour".text.size(16).bold.make(),
           const HeightBox(30),
           ListTile(
             onTap: () {
               _choice = 1;
               onChanged(_choice);
             },
             title: "Je reserve pour Aujourd'hui".text.bold.make().py8(),
             subtitle: "Lundi 12 Juillet 2021".text.size(15).make(),
             trailing: Image.asset("assets/images/EightOclock.png").box.p12.rounded.color(const Color(0xFFF48FB1)).make(),
           ),
            const HeightBox(20),
            ListTile(
              onTap: () {
                _choice = 2;
                onChanged(_choice);
              },
              title: "Je reserve pour un autre jour".text.bold.make(),
              subtitle: "Lundi 12 Juillet 2021".text.size(15).make(),
              trailing: Image.asset("assets/images/SpiralCalendar.png").box.p12.rounded.color(const Color(0xFFF48FB1)).make(),
            ),
         ],
        ).px(16).py(12).h(350),
      ),
    );
  }
}
