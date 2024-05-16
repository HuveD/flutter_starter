import 'package:go_router/go_router.dart';
import 'package:flutter_starter/main.dart';
import 'package:flutter_starter/pages/home/page.dart';

final router = GoRouter(
  navigatorKey: FlutterStarterApp.navKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
