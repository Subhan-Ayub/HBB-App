import 'package:get/get.dart';
import 'package:hbb/src/bindings/IncomeExpenseBinding.dart';
import 'package:hbb/src/bindings/SupportTeamBinding.dart';
import 'package:hbb/src/bindings/activityBinding.dart';
import 'package:hbb/src/bindings/coachNetworkBinding.dart';
import 'package:hbb/src/bindings/contactListBinding.dart';
import 'package:hbb/src/bindings/contactUsBinding.dart';
import 'package:hbb/src/bindings/homeBinding.dart';
import 'package:hbb/src/bindings/loginBinding.dart';
import 'package:hbb/src/bindings/myGoalsBinding.dart';
import 'package:hbb/src/bindings/profileBinding.dart';
import 'package:hbb/src/bindings/programDataBinding.dart';
import 'package:hbb/src/bindings/programDetailBinding.dart';
import 'package:hbb/src/bindings/showReportBindings.dart';
import 'package:hbb/src/bindings/signinBinding.dart';
import 'package:hbb/src/bindings/signupBinding.dart';
import 'package:hbb/src/middlewares/auth.dart';
import 'package:hbb/src/ui/view/activity.dart';
import 'package:hbb/src/ui/view/coachingNetwork.dart';
import 'package:hbb/src/ui/view/contactList.dart';
import 'package:hbb/src/ui/view/contactUs.dart';
import 'package:hbb/src/ui/view/editProfile.dart';
import 'package:hbb/src/ui/view/home.dart';
import 'package:hbb/src/ui/view/incomeExpense.dart';
import 'package:hbb/src/ui/view/login.dart';
import 'package:hbb/src/ui/view/myGoals.dart';
import 'package:hbb/src/ui/view/profile.dart';
import 'package:hbb/src/ui/view/progamDetail.dart';
import 'package:hbb/src/ui/view/programData.dart';
import 'package:hbb/src/ui/view/showAllReports.dart';
import 'package:hbb/src/ui/view/signIn.dart';
import 'package:hbb/src/ui/view/signUp.dart';
import 'package:hbb/src/ui/view/splashScreen.dart';
import 'package:hbb/src/ui/view/supportTeam.dart';
import 'package:hbb/src/utils/routes/routes.dart';

import '../../bindings/editProfileBinding.dart';
import '../../bindings/statistics&reportsBindings.dart';
import '../../ui/view/statistics&report.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const String INITIAL = Routes.splashScreen;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
        name: Routes.splashScreen,
        page: () => SplashScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.signup,
        binding: SignUpBinding(),
        page: () => SignUpScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.login,
        binding: LogInBinding(),
        page: () => LogInScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.signin,
        binding: SignInBinding(),
        page: () => SignInScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.home,
        binding: HomeBinding(),
        middlewares: [AuthMiddleware()],
        page: () => HomeScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.activity,
        binding: ActivityBinding(),
        page: () => ActivityScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.profile,
        binding: ProfileBinding(),
        page: () => ProfileScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.contactUs,
        binding: ContactUsBinding(),
        page: () => ContactUsScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.reports,
        binding: StatisticsAndReportsBindings(),
        page: () => StatisticsAndReports(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.editprofile,
        binding: EditProfileBinding(),
        page: () => EditProfileScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.programdetail,
        binding: ProgramDetailBinding(),
        page: () => ProgramDetailScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.programdata,
        binding: ProgramDataBinding(),
        page: () => ProgramDataScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.supportteam,
        binding: SupportTeamBinding(),
        page: () => SupportTeamScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.incomeexpense,
        binding: IncomeExpenseBinding(),
        page: () => IncomeExpenseScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.mygoals,
        binding: MyGoalsBinding(),
        page: () => MyGoalScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.coachnetwork,
        binding: CoachNetworkBinding(),
        page: () => CoachNetworkScreen(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.contactlist,
        binding: ContactListBinding(),
        page: () => ContactListScreen(),
        transition: Transition.noTransition),
        GetPage(
        name: Routes.showReports,
        binding: ShowReportBingings(),
        page: () => ShowReports(),
        transition: Transition.noTransition),
  ];
}
