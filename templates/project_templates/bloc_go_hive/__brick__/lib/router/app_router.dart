// import your pages here
import 'package:{{projectName.snakeCase()}}/pages/home/home_page.dart';
import 'package:{{projectName.snakeCase()}}/pages/main/main_page.dart';
import 'package:{{projectName.snakeCase()}}/pages/mine/mine_page.dart';
import 'package:{{projectName.snakeCase()}}/router/app_path.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final List<GoRoute> shellRoutes = [
  GoRoute(
    path: homePath,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: minePath,
    builder: (context, state) => const MinePage(),
  ),
];

final appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  observers: [BotToastNavigatorObserver()],
  routes: [
    ShellRoute(
      navigatorKey: shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: MainPage(
            child: child,
          ),
        );
      },
      routes: shellRoutes,
    ),
    // insert your route here
  ],
);
