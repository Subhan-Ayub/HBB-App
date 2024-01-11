import 'package:get/get.dart';
import 'package:hbb/src/bindings/activityBinding.dart';
import 'package:hbb/src/bindings/contactUsBinding.dart';
import 'package:hbb/src/bindings/homeBinding.dart';
import 'package:hbb/src/bindings/loginBinding.dart';
import 'package:hbb/src/bindings/menuBinding.dart';
import 'package:hbb/src/bindings/profileBinding.dart';
import 'package:hbb/src/bindings/programDetailBinding.dart';
import 'package:hbb/src/bindings/signinBinding.dart';
import 'package:hbb/src/bindings/signupBinding.dart';
import 'package:hbb/src/middlewares/auth.dart';
import 'package:hbb/src/ui/view/activity.dart';
import 'package:hbb/src/ui/view/contactUs.dart';
import 'package:hbb/src/ui/view/editProfile.dart';
import 'package:hbb/src/ui/view/home.dart';
import 'package:hbb/src/ui/view/login.dart';
import 'package:hbb/src/ui/view/profile.dart';
import 'package:hbb/src/ui/view/progamDetail.dart';
import 'package:hbb/src/ui/view/signIn.dart';
import 'package:hbb/src/ui/view/signUp.dart';
import 'package:hbb/src/ui/view/splashScreen.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../bindings/editProfileBinding.dart';
import '../../bindings/statistics&reportsBindings.dart';
import '../../ui/view/menu.dart';
import '../../ui/view/statistics&report.dart';

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
      middlewares: [AuthMiddleware()],
      page: () => HomeScreen(),
    ),
     GetPage(
      name: Routes.activity,
      binding: ActivityBinding(),
      page: () => ActivityScreen(),
    ),
      GetPage(
      name: Routes.profile,
      binding: ProfileBinding(),
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: Routes.contactUs,
      binding: ContactUsBinding(),
      page: () => ContactUsScreen(),
    ),
      GetPage(
      name: Routes.reports,
      binding: StatisticsAndReportsBindings(),
      page: () => StatisticsAndReports(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Routes.menu,
      binding: MenuBinding(),
      page: () => MenuScreen(),
    ),

    GetPage(
      name: Routes.editprofile,
      binding: EditProfileBinding(),
      page: () => EditProfileScreen(),
    ),
    GetPage(
      name: Routes.programdetail,
      binding: ProgramDetailBinding(),
      page: () => ProgramDetailScreen(),
    ),

  ];
}
