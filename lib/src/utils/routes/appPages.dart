import 'package:hbb/src/bindings/activityBinding.dart';
import 'package:hbb/src/bindings/homeBinding.dart';
import 'package:hbb/src/bindings/loginBinding.dart';
import 'package:hbb/src/bindings/signinBinding.dart';
import 'package:hbb/src/bindings/signupBinding.dart';
import 'package:hbb/src/ui/view/activity.dart';
import 'package:hbb/src/ui/view/home.dart';
import 'package:hbb/src/ui/view/login.dart';
import 'package:hbb/src/ui/view/signIn.dart';
import 'package:hbb/src/ui/view/signUp.dart';
import 'package:hbb/src/ui/view/splashScreen.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const String INITIAL = Routes.splashScreen;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.signup,
      binding: SignUpBinding(),
      page: () => SignUpScreen(),
      // transition: Transition.downToUp
    ),
    GetPage(
      name: Routes.login,
      binding: LogInBinding(),
      page: () => LogInScreen(),
      // transition: Transition.rightToLeftWithFade
    ),
    GetPage(
      name: Routes.signin,
      binding: SignInBinding(),
      page: () => SignInScreen(),
    ),
    GetPage(
      name: Routes.home,
      binding: HomeBinding(),
      page: () => HomeScreen(),
    ),
     GetPage(
      name: Routes.activity,
      binding: ActivityBinding(),
      page: () => ActivityScreen(),
    ),
  ];
}
