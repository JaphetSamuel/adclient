import 'package:get/get.dart';

import '../modules/Appartement/bindings/appartement_binding.dart';
import '../modules/Appartement/views/appartement_view.dart';
import '../modules/Auth/bindings/auth_binding.dart';
import '../modules/Auth/views/auth_view.dart';
import '../modules/Explorer/bindings/explorer_binding.dart';
import '../modules/Explorer/views/explorer_view.dart';
import '../modules/Location/bindings/location_binding.dart';
import '../modules/Location/views/location_view.dart';
import '../modules/Map/bindings/map_binding.dart';
import '../modules/Map/views/map_view.dart';
import '../modules/Notif/bindings/notif_binding.dart';
import '../modules/Notif/views/notif_view.dart';
import '../modules/Onboarding/bindings/onboarding_binding.dart';
import '../modules/Onboarding/views/onboarding_view.dart';
import '../modules/Plan/bindings/plan_binding.dart';
import '../modules/Plan/views/plan_view.dart';
import '../modules/Profil/bindings/profil_binding.dart';
import '../modules/Profil/views/profil_view.dart';
import '../modules/ReservationWizard/bindings/reservation_wizard_binding.dart';
import '../modules/ReservationWizard/views/reservation_wizard_view.dart';
import '../modules/Wallet/bindings/wallet_binding.dart';
import '../modules/Wallet/views/wallet_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ROOT,
      page: () => const RootView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.LOCATION,
      page: () => const LocationView(),
      binding: LocationBinding(),
    ),
    GetPage(
      name: _Paths.NOTIF,
      participatesInRootNavigator: true,
      page: () => const NotifView(),
      binding: NotifBinding(),
    ),
    GetPage(
      name: _Paths.PLAN,
      page: () => const PlanView(),
      binding: PlanBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => const WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => const MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => const ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.APPARTEMENT,
      page: () => const AppartementView(),
      binding: AppartementBinding(),
    ),
    GetPage(
      name: _Paths.RESERVATION_WIZARD,
      page: () => const ReservationWizardView(),
      binding: ReservationWizardBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORER,
      page: () => const ExplorerView(),
      binding: ExplorerBinding(),
    ),
  ];
}
