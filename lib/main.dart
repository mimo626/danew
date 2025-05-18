import 'package:danew/features/login/presentation/pages/additional_user_info_page.dart';
import 'package:danew/features/login/presentation/pages/keyword_select_page.dart';
import 'package:danew/features/login/presentation/pages/login_page.dart';
import 'package:danew/features/login/presentation/pages/terms_agree_page.dart';
import 'package:danew/features/search/presentation/pages/search_page.dart';
import 'package:danew/main_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  initialLocation: "/login",
  routes: <RouteBase>[
    GoRoute(
    path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/additionalUserInfo',
      builder: (BuildContext context, GoRouterState state) {
        return const AdditionalUserInfoPage();
      },
    ),
    GoRoute(
      path: '/termsAgree',
      builder: (BuildContext context, GoRouterState state) {
        return const TermsAgreePage();
      },
    ),
    GoRoute(
      path: '/keywordSelect',
      builder: (BuildContext context, GoRouterState state) {
        return const KeywordSelectPage();
      },
    ),
    GoRoute(
      path: '/search',
      builder: (BuildContext context, GoRouterState state) {
        return const SearchPage();
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainPage();
      },
    ),
  ],
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}