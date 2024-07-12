import 'package:adclient/app/modules/ReservationWizard/controllers/reservation_wizard_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../composants/emptyReservationCard.dart';
import '../../ReservationWizard/composants/WizardChoiceLocation.dart';
import '../../ReservationWizard/composants/WizardModalChoiceDate.dart';
import '../../ReservationWizard/composants/WizardPickDate.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/homeBackground.png'),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.toNamed('/profil');
                            },
                            icon: const Icon(
                              Icons.account_circle_sharp,
                              size: 40,
                              color: Colors.grey,
                            )).p12()
                      ],
                    ),
                    "Reserver maintenant".text.bold.white
                        .size(20)
                        .black
                        .make()
                        .px8(),
                    VxScrollHorizontal(
                      child: [
                       const Chip(
                          label: Text("Studio"),
                          avatar: Icon(Icons.bed),
                          labelPadding: EdgeInsets.symmetric(vertical: 4),
                        ).px(5)

                        , const Chip(
                          label: Text("Appartement"),
                          avatar: Icon(Icons.bed),
                          labelPadding: EdgeInsets.symmetric(vertical: 4),
                        ).px(5),
                       const Chip(
                          label: Text("Haut Standing"),
                          avatar: Icon(Icons.bed),
                          labelPadding: EdgeInsets.symmetric(vertical: 4),
                        ).px(5)

                        , const Chip(
                          label: Text("Chalet"),
                          avatar: Icon(Icons.bed),
                          labelPadding: EdgeInsets.symmetric(vertical: 4),
                        ).px(5),
                      ].hStack(),
                    ).marginOnly(top: 60, left: 5),                ],
                ),
              )
            ],
          ),
          VStack([
            "Réservation en attente".text.bold.size(20).make().p8(),
            ReservationStreamBuilder()
          ]).py8()
        ],
      ),
    );
  }
  Widget builds() {
    return Material(
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
  Widget ReservationStreamBuilder({int userReservation = 1}) {
    // ReservationProvider reservationProvider = Get.find();

    return FutureBuilder(
      future: null,
      builder: (context, snapshot) {
        print("data = ${snapshot.data}");
        snapshot.connectionState == ConnectionState.done
            ? print("done")
            : print("not done");
        if (snapshot.hasData) {
          return VxScrollHorizontal(
            child: Row(children: [
              for (var i in snapshot.data as List)
              // ReservationCardHome(reservation: i)
                Text(i.id.toString())
            ]),
          );
        }
        if (!snapshot.hasError) {
          return EmptyReservationCard(onClick: () {
            onClick: () {
              // Get.toNamed('/reservation-wizard');
              builds(); // J'ai remplacé "builds()"  par la fonction que vous souhaitez appeler ici.
            };
          }).p(8);
        }
        if (!snapshot.hasData) {
          return EmptyReservationCard(onClick: () {}).p(8);
        }

        return const Center(
          child: CircularProgressIndicator(),);
      },
    );
  }
}
