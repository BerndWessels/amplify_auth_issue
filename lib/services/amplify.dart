import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:sisyphus_app/configs/amplifyconfiguration_android.dart';
import 'package:sisyphus_app/configs/amplifyconfiguration_web.dart';

class AmplifyService {
  /// The amplify api plugin.
  final api = AmplifyAPI();

  /// The amplify auth plugin.
  final auth = AmplifyAuthCognito();

  // A function that initializes and performs async initialization logic, such as fetching data and setting up providers. It returns a Future<void>.
  Future<AmplifyService> initialize() async {
    try {
      // Add the appsync api plugin to the list of plugins to be initialized
      await Amplify.addPlugin(api);
      // Add the cognito auth plugin to the list of plugins to be initialized
      await Amplify.addPlugin(auth);
      // Call Amplify.configure to use the initialized categories in your app
      if (kIsWeb) {
        await Amplify.configure(amplifyConfigWeb);
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        await Amplify.configure(amplifyConfigAndroid);
      } else if (defaultTargetPlatform == TargetPlatform.linux) {
        await Amplify.configure(amplifyConfigWeb);
      }
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
    return this;
  }
}
