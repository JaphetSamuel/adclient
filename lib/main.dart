import 'package:adclient/app/modules/Appartement/controllers/appartement_controller.dart';
import 'package:adclient/app/modules/Auth/controllers/auth_controller.dart';
import 'package:adclient/app/modules/Explorer/controllers/explorer_controller.dart';
import 'package:adclient/app/modules/Location/controllers/location_controller.dart';
import 'package:adclient/app/modules/Map/controllers/map_controller.dart';
import 'package:adclient/app/modules/Notif/controllers/notif_controller.dart';
import 'package:adclient/app/modules/Onboarding/controllers/onboarding_controller.dart';
import 'package:adclient/app/modules/Plan/controllers/plan_controller.dart';
import 'package:adclient/app/modules/Profil/controllers/profil_controller.dart';
import 'package:adclient/app/modules/ReservationWizard/controllers/reservation_wizard_controller.dart';
import 'package:adclient/app/modules/Wallet/controllers/wallet_controller.dart';
import 'package:adclient/app/modules/home/controllers/home_controller.dart';
import 'package:adclient/app/modules/root/controllers/root_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/themes/dark.dart';
import 'app/utils/themes/light.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: Mytheme,
      darkTheme: MyDarkTheme,
      themeMode: ThemeMode.system,
      locale: Locale('fr', 'FR'),
      onInit: () {
        Get.lazyPut<ExplorerController>(()=>ExplorerController());
        Get.lazyPut(() => WalletController());
        Get.lazyPut(() => RootController());
        Get.lazyPut(() => ProfilController());
        Get.lazyPut(() => ReservationWizardController());
        Get.lazyPut(() => PlanController());
        Get.lazyPut(() => OnboardingController());
        Get.lazyPut(() => NotifController());
        Get.lazyPut(() => MapsController());
        Get.lazyPut(() => LocationController());
        Get.lazyPut(() => HomeController());
        Get.lazyPut(() => AuthController());
        Get.lazyPut(() => AppartementController());
      },
    ),
  );
}
