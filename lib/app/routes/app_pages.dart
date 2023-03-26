import 'package:get/get.dart';

import '../modules/canvaschart/bindings/canvaschart_binding.dart';
import '../modules/canvaschart/views/canvaschart_view.dart';
import '../modules/canvastutorial1/bindings/canvastutorial1_binding.dart';
import '../modules/canvastutorial1/views/canvastutorial1_view.dart';
import '../modules/flutterlocalpushnotification/bindings/flutterlocalpushnotification_binding.dart';
import '../modules/flutterlocalpushnotification/views/flutterlocalpushnotification_view.dart';
import '../modules/forgotpassword/bindings/forgotpassword_binding.dart';
import '../modules/forgotpassword/views/forgotpassword_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mapviewscreen/bindings/mapviewscreen_binding.dart';
import '../modules/mapviewscreen/views/mapviewscreen_view.dart';
import '../modules/mycart/bindings/mycart_binding.dart';
import '../modules/mycart/views/mycart_view.dart';
import '../modules/productDetailsPage/bindings/product_details_page_binding.dart';
import '../modules/productDetailsPage/views/product_details_page_view.dart';
import '../modules/profileScreen/bindings/profile_screen_binding.dart';
import '../modules/profileScreen/views/profile_screen_view.dart';
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
import '../modules/webview/bindings/webview_binding.dart';
import '../modules/webview/views/webview_view.dart';

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
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.MYCART,
      page: () => MycartView(),
      binding: MycartBinding(),
    ),
    GetPage(
      name: _Paths.WEBVIEW,
      page: () => WebviewView(),
      binding: WebviewBinding(),
    ),
    GetPage(
      name: _Paths.CANVASTUTORIAL1,
      page: () => const Canvastutorial1View(),
      binding: Canvastutorial1Binding(),
    ),
    GetPage(
      name: _Paths.CANVASCHART,
      page: () => CanvaschartView(),
      binding: CanvaschartBinding(),
    ),
    GetPage(
      name: _Paths.MAPVIEWSCREEN,
      page: () => MapviewscreenView(),
      binding: MapviewscreenBinding(),
    ),
    GetPage(
      name: _Paths.FLUTTERLOCALPUSHNOTIFICATION,
      page: () =>  FlutterlocalpushnotificationView(),
      binding: FlutterlocalpushnotificationBinding(),
    ),
  ];
}
