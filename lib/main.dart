import 'package:danew/features/alarm/presentation/pages/alarm_page.dart';
import 'package:danew/features/login/presentation/pages/additional_user_info_page.dart';
import 'package:danew/features/login/presentation/pages/keyword_select_page.dart';
import 'package:danew/features/login/presentation/pages/login_page.dart';
import 'package:danew/features/login/presentation/pages/terms_agree_page.dart';
import 'package:danew/features/news/presentation/pages/news_detail_page.dart';
import 'package:danew/features/search/presentation/pages/search_page.dart';
import 'package:danew/features/user_management/presentation/pages/setting_page.dart';
import 'package:danew/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
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
      path: '/newsDetail',
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, dynamic>;
        return NewsDetailPage(newsData: extra['newsData']);
        },
    ),
    GoRoute(
      path: '/search',
      builder: (BuildContext context, GoRouterState state) {
        return const SearchPage();
      },
    ),
    GoRoute(
      path: '/alarm',
      builder: (BuildContext context, GoRouterState state) {
        return const AlarmPage();
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) {
        return const SettingPage();
      },
    ),
    GoRoute(
      path: '/profileEdit',
      builder: (BuildContext context, GoRouterState state) {
        return const SettingPage();
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


class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context ,WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}