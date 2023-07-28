import 'package:adclient/app/composants/MyIcon.dart';
import 'package:adclient/app/composants/TopCenterBar.dart';
import 'package:adclient/app/modules/Appartement/composants/CommentTile.dart';
import 'package:adclient/app/modules/Appartement/composants/ComoditeTile.dart';
import 'package:adclient/app/modules/Appartement/composants/DescriptionTile.dart';
import 'package:adclient/app/modules/Map/views/map_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controllers/appartement_controller.dart';

class AppartementView extends GetView<AppartementController> {
  const AppartementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(

          elevation: 0,
          leading:
              BackButton(),
          actions: [
            Icon(
              Ionicons.send,
              color: Colors.red,
            ).pOnly(right: 4),
            Icon(
              Ionicons.heart,
              color: Colors.red,
            ).pOnly(right: 4)
                .px(1),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              VxSwiper(
                enableInfiniteScroll: false,
                  realPage: 10, items: [
                Image.asset("assets/images/Rectangle407.png", fit: BoxFit.fill),
                Image.asset("assets/images/Rectangle497(1).png", fit: BoxFit.fill,),
              ]),
              ListTile(
                isThreeLine: true,
                title: "Deux pièce meublés haut standing"
                    .text
                    .size(20)
                    .fontWeight(FontWeight.w800)
                    .make()
                    .p8(),
                subtitle: [
                  "Ananeraie Antenne Yopougon, Abidjan".text.size(17).make(),
                  RatingStars(
                    value: 3.5,
                  )
                ].vStack(crossAlignment: CrossAxisAlignment.start),
              ).py8(),
              DescriptionTile(
                      text: "Lorem ipsum dolor sit amet, consectetur adipiscing"
                          " elit, sed do eiusmod.Lorem ipsum dolor.")
                  .py8(),
              ListTile(
                title: "Description amenagement"
                    .text
                    .fontWeight(FontWeight.w700)
                    .make()
                    .py4(),
                subtitle: Text.rich(TextSpan(
                    text:
                        "Pour 4 invités • 1 chambre • 1 salon • 1 salle de bain • 1 cuisine")),
              ).py8(),
              ComoditeTile().py8(),
              [
                ListTile(
                  title: "Localisation"
                      .text
                      .fontWeight(FontWeight.w700)
                      .make()
                      .py4(),
                  subtitle:
                      "Ananeraie Antenne Yopougon, Abidjan".text.size(17).make(),
                ),
                SizedBox(
                  height: 300,
                  child: MapView(),
                ).p8()
              ].vStack(crossAlignment: CrossAxisAlignment.start),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                title: "Ibrahim Mahadou Ali"
                    .text
                    .size(16)
                    .fontWeight(FontWeight.bold)
                    .make(),
                subtitle: Text("Rejoint en mai 2022"),
              ).py8(),
              [
                "Commentaires".text.fontWeight(FontWeight.w700).make().py4(),
                CommentTile(),
                CommentTile(),
                CommentTile(),
              ].vStack(crossAlignment: CrossAxisAlignment.start).p8()
            ],
          ),
        ),
        persistentFooterButtons: [
          ListTile(
            title: Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "17 000 XOF",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: " / journalier")
              ]),
            ),
            // subtitle: "3 - 8 Dec".text.color(Colors.redAccent).make(),
            trailing: ElevatedButton(
              onPressed: () => _showModalDialog(context),
              child: Text("Reserver"),
            ),
          )
        ],
      ),
    );
  }

  _showModalDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 18),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: AspectRatio(
              aspectRatio: 11 / 18,
              child: [Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TopCenterBar(),
                  "Finaliser la reservation".text.color(Colors.redAccent)
                      .fontWeight(FontWeight.bold)
                      .make().py4(),
                  Align(alignment: Alignment.centerLeft,
                    child: [
                      "Commentaires".text.fontWeight(FontWeight.w700).make().py4(),
                      Text("Deux pièces meublé haut standing").py4(),
                      "6-5 juin pour 2 personnes".text.color(Colors.grey).make().py4(),
                      Divider(color: Colors.grey[400],),
                      "Prix détaillé".text.bold.black.make().py4(),
                      "1700 * 9".text.make()
                    ].vStack(crossAlignment: CrossAxisAlignment.start),
                  ),
                ],
              ).px(8),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(onPressed: (){}, child: Text("Confirmer et payer"),),
                ).pOnly(bottom: 10)
              ].vStack(alignment: MainAxisAlignment.spaceBetween),
            ),
          );
        });
  }
}
