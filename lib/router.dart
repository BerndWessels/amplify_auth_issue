// The route configuration.
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:signals/signals_flutter.dart';
import 'package:sisyphus_app/routes/home/screen.dart';
import 'package:sisyphus_app/routes/profile/screen.dart';
import 'package:sisyphus_app/services/auth.dart';
import 'package:sisyphus_app/services/settings.dart';

/// This defines the routes for the app.
final GoRouter router = GoRouter(
  // Redirect to the login screen if the user is not logged in
  redirect: (context, state) async {
    if (!GetIt.I<AuthService>().isLoggedIn()) {
      try {
        context.loaderOverlay.show();
        await GetIt.I<AuthService>().socialSignIn();
      } finally {
        context.mounted ? context.loaderOverlay.hide() : null;
      }
    }
    return null;
  },
  // The route configuration.
  initialLocation: GetIt.I<SettingsService>().dismissOnboarding()
      ? '/'
      : '/', //'/onboarding',
  // Refresh the listenable when the user logs in or out
  refreshListenable: GetIt.I<AuthService>().isLoggedIn.toValueListenable(),
  // Configure the routes
  routes: <RouteBase>[
    // GoRoute(
    //   path: '/onboarding',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return OnboardingScreen();
    //   },
    // ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'profile',
          builder: (BuildContext context, GoRouterState state) {
            return const ProfileScreen();
          },
          // redirect: (context, state) async {
          //   if (!GetIt.I<AuthService>().isLoggedIn()) {
          //     try {
          //       context.loaderOverlay.show();
          //       await GetIt.I<AuthService>().socialSignIn();
          //     } finally {
          //       context.mounted ? context.loaderOverlay.hide() : null;
          //     }
          //   }
          //   return null;
          // },
        ),
      ],
    ),
  ],
);

extension GoRouterLocation on GoRouter {
  String get location {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
