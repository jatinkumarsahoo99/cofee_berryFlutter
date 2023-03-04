import 'package:get/get.dart';

import '../modules/forgotpassword/bindings/forgotpassword_binding.dart';
import '../modules/forgotpassword/views/forgotpassword_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/productDetailsPage/bindings/product_details_page_binding.dart';
import '../modules/productDetailsPage/views/product_details_page_view.dart';
import '../modules/signinscreen/bindings/signinscreen_binding.dart';
import '../modules/signinscreen/views/signinscreen_view.dart';
import '../modules/signupscreen/bindings/signupscreen_binding.dart';
import '../modules/signupscreen/views/signupscreen_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';
import '../modules/userdashboard/bindings/userdashboard_binding.dart';
import '../modules/userdashboard/views/userdashboard_view.dart';
import '../modules/verification/bindings/verification_binding.dart';
import '../modules/verification/views/verification_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPSCREEN,
      page: () => SignupscreenView(),
      binding: SignupscreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNINSCREEN,
      page: () => SigninscreenView(),
      binding: SigninscreenBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () => ForgotpasswordView(),
      binding: ForgotpasswordBinding(),
    ),
    GetPage(
      name: _Paths.USERDASHBOARD,
      page: () => UserdashboardView(),
      binding: UserdashboardBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS_PAGE,
      page: () => ProductDetailsPageView(),
      binding: ProductDetailsPageBinding(),
    ),
  ];
}
