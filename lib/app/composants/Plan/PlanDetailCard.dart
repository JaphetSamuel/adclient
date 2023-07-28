import 'package:adclient/app/modules/Appartement/views/appartement_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ionicons/ionicons.dart';

class PlanDetailCard extends StatelessWidget {
  const PlanDetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed("/appartement");
      },
      child: Column(
          children: [
            VxSwiper(items: [
              Image.network("https://via.placeholder.com/345x206", errorBuilder: _onError,),
              Image.network("https://via.placeholder.com/345x206", errorBuilder: _onError,),
              Image.network("https://via.placeholder.com/345x206",errorBuilder: _onError,),
            ]),
            ListTile(
              title: Text("Deux pièces haut standing meublé"),
              subtitle: Text("Annaneraire antenne yopougon"),
              trailing: "10 m".text.color(Colors.grey).make(),
            ),
            "17 000 XOF / jour".text.bold.make(),
          ]
      ).pOnly(bottom: 12),
    );
  }
  Widget _onError(BuildContext context, Object object, StackTrace? stackTrace){
    return SizedBox(height: 80,);
  }
}
