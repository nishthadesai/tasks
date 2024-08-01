import 'package:auto_route/auto_route.dart';
import 'package:encrypt/encrypt.dart';
import 'package:flutter_demo_structure/core/locator/locator.dart';
import 'package:flutter_demo_structure/ui/auth/login/ui/login_page.dart';
import 'package:flutter_demo_structure/ui/auth/sign_up/sign_up_page.dart';
import 'package:flutter_demo_structure/ui/home/home_page.dart';
import 'package:flutter_demo_structure/ui/splash/splash_page.dart';

import '../data/my_data/contact_data.dart';
import '../ui/task/task_31_07/add_contact_page.dart';
import '../ui/task/task_31_07/contact_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: ContactListRoute.page),
    AutoRoute(page: AddContactRoute.page),
  ];
}

final appRouter = locator<AppRouter>();
