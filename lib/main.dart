import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sisyphus_app/responsive.dart';
import 'package:sisyphus_app/router.dart';
import 'package:sisyphus_app/services/amplify.dart';
import 'package:sisyphus_app/services/appsync.dart';
import 'package:sisyphus_app/services/auth.dart';
import 'package:sisyphus_app/services/settings.dart';

/// The entry point for the application.
///
/// This is where we initialize the app and prepare it to be run.
void main() async {
  /// Obtain a reference to the widgets binding.
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Prevent the splash screen from being garbage collected.
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Retrieve the saved theme mode.
  final AdaptiveThemeMode? savedThemeMode = await AdaptiveTheme.getThemeMode();

  /// Initialize all services and controllers.
  await initialize();

  /// Remove the splash screen.
  FlutterNativeSplash.remove();

  /// Run the app with the saved theme mode.
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

/// Initialize all services and controllers.
///
/// A function that initializes and performs async initialization logic,
/// such as fetching data and setting up providers. It returns a Future<void>.
Future<void> initialize() async {
  /// Register the settings service
  GetIt.I.registerSingletonAsync<SettingsService>(
      () async => SettingsService().initialize());

  /// Register the amplify service.
  GetIt.I.registerSingletonAsync<AmplifyService>(
      () async => AmplifyService().initialize());

  /// Register the auth service.
  GetIt.I.registerSingletonAsync<AuthService>(
      () async => AuthService().initialize(),
      dependsOn: [AmplifyService]);

  /// Register the app sync service.
  GetIt.I.registerSingletonAsync<AppSyncService>(
      () async => AppSyncService().initialize(),
      dependsOn: [AmplifyService, AuthService]);

  /// Ensure all services and controllers are initialized.
  await GetIt.I.allReady();
}

/// The root widget of the app.
///
/// This is where the app's [AdaptiveTheme] is defined, and where the
/// [MaterialApp.router] is placed inside a [GlobalLoaderOverlay].
class MyApp extends StatelessWidget {
  /// Creates a [MyApp].
  ///
  /// The [savedThemeMode] is used to initialize the app's theme.
  const MyApp({
    super.key,
    required this.savedThemeMode,
  });

  /// The theme mode saved in [AdaptiveTheme].
  final AdaptiveThemeMode? savedThemeMode;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      /// Light theme.
      light: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.deepPurple,
      ),

      /// Dark theme.
      dark: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.deepPurple,
      ),

      /// Show the theme selector in debug mode.
      debugShowFloatingThemeButton: true,

      /// The initial theme mode.
      initial: savedThemeMode ?? AdaptiveThemeMode.light,

      /// The theme builder.
      builder: (theme, darkTheme) {
        /// The root [Widget] of the app.
        /// This is where the [MaterialApp.router] is placed inside a [GlobalLoaderOverlay].
        return GlobalLoaderOverlay(
          /// The child widget.
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,

            /// The app's router.
            routerConfig: router,

            /// The app's theme.
            theme: theme,

            /// The app's dark theme.
            darkTheme: darkTheme,

            /// The responsive width builder.
            builder: (context, child) => ResponsiveWidthBuilder(
              /// The active route widget.
              child: child!,
            ),
          ),
        );
      },
    );
  }
}
