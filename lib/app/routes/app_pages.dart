import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/auth/views/login_view.dart';
import '../modules/bet/bindings/bet_binding.dart';
import '../modules/bet/views/bet_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/member/bindings/member_binding.dart';
import '../modules/member/views/member_view.dart';
import '../modules/model/bindings/model_binding.dart';
import '../modules/model/views/model_view.dart';
import '../modules/report/bindings/report_binding.dart';
import '../modules/report/views/report_view.dart';
import '../modules/select_target/bindings/select_target_binding.dart';
import '../modules/select_target/views/select_target_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => LoginView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.BET,
      page: () => const BetView(),
      binding: BetBinding(),
    ),
    GetPage(
      name: _Paths.MEMBER,
      page: () => const MemberView(),
      binding: MemberBinding(),
    ),
    GetPage(
      name: _Paths.REPORT,
      page: () => const ReportView(),
      binding: ReportBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_TARGET,
      page: () => const SelectTargetView(),
      binding: SelectTargetBinding(),
    ),
    GetPage(
      name: _Paths.MODEL,
      page: () => const ModelView(),
      binding: ModelBinding(),
    ),
  ];
}
