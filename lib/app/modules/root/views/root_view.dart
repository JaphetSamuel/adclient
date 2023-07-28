import 'package:adclient/app/modules/Location/views/location_view.dart';
import 'package:adclient/app/modules/Notif/views/notif_view.dart';
import 'package:adclient/app/modules/Plan/views/plan_view.dart';
import 'package:adclient/app/modules/Wallet/views/wallet_view.dart';
import 'package:adclient/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../composants/MyIcon.dart';
import '../../Notif/controllers/notif_controller.dart';
import '../../Wallet/controllers/wallet_controller.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          children: [
            LocationView(),
            NotifView(),
            HomeView(),
            PlanView(),
            WalletView()
          ],
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                      label: "Map",
                      icon: MyIcon(
                        onTap: (active) {
                          controller.onSelectItem(0);
                        },
                        active: controller.selectItem == 0,
                        activeIcon: SvgPicture.asset("assets/svg/actLocation.svg"),
                        inactiveIcon: SvgPicture.asset("assets/svg/Location.svg"),
                      )),
                  BottomNavigationBarItem(
                      label: "Notification",
                      icon: MyIcon(
                        onTap: (active) {
                          controller.onSelectItem(1);
                        },
                        active: controller.selectItem == 1,
                        activeIcon: SvgPicture.asset("assets/svg/actNotification.svg"),
                        inactiveIcon: SvgPicture.asset("assets/svg/Notification.svg"),
                      )),
                  BottomNavigationBarItem(
                      label: "Home",
                      icon: MyIcon(
                        onTap: (active) {
                          controller.onSelectItem(2);
                        },
                        active: controller.selectItem == 2,
                        activeIcon: SvgPicture.asset("assets/svg/actHome.svg"),
                        inactiveIcon: SvgPicture.asset("assets/svg/Home.svg"),
                      )),
                  BottomNavigationBarItem(
                      label: "Plan",
                      icon: MyIcon(
                        onTap: (active) {
                          controller.onSelectItem(3);
                        },
                        active: controller.selectItem == 3,
                        activeIcon: SvgPicture.asset("assets/svg/actHeart.svg"),
                        inactiveIcon: SvgPicture.asset("assets/svg/Heart.svg"),
                      )),
                  BottomNavigationBarItem(
                      label: "Wallet",
                      icon: MyIcon(
                        onTap: (active) {
                          controller.onSelectItem(4);
                        },
                        active: controller.selectItem == 4,
                        activeIcon: SvgPicture.asset("assets/svg/actWallet.svg"),
                        inactiveIcon: SvgPicture.asset("assets/svg/Wallet.svg"),
                      ))
                ])));
  }
}
