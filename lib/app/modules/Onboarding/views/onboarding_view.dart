import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Material(
        child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              [SvgPicture.asset('assets/images/logolong.svg')].hStack(alignment: MainAxisAlignment.start),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: PageView(
                    children: [
                      _onboardingPage("assets/images/onboarding1.svg", "Trouvez votre adresse",
                          "Trouvez votre adresse en un clic"),
                      _onboardingPage(
                          "assets/images/onboarding2.svg",
                          "Service de qualité à votre disposition",
                          "Trouvez votre adresse en un clic"),
                      _onboardingPage(
                          "assets/images/onboarding3.svg",
                          "Moyen de paiement sécurisé",
                          "Trouvez votre adresse en un clic"),
                    ],
                  ))
            ]),
      ),
   );
  }

  Widget _onboardingPage(String image, String title, String description) {
    return VStack(
      [
        title.text.bold.size(20).make(),
        description.text.size(15).make(),

        SvgPicture.asset(image).pSymmetric(v: 30.0, h: 20.0),
      ],
    );
  }
}
