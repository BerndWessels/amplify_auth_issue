import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:signals/signals.dart';
import 'package:sisyphus_app/services/amplify.dart';

class AuthService {
  /// Current user signal
  final currentUser = signal<AuthUser?>(null);

  /// Computed signal that only emits when the user is logged in / out
  late final isLoggedIn = computed(() => currentUser() != null);

  /// Computed signal that returns the current user name or 'N/A'
  late final currentUserName = computed(() => currentUser()?.username ?? 'N/A');

  /// The amplify auth plugin.
  final _auth = GetIt.I<AmplifyService>().auth;

  // A function that initializes and performs async initialization logic, such as fetching data and setting up providers. It returns a Future<void>.
  Future<AuthService> initialize() async {
    try {
      final response = await _auth.getCurrentUser();
      currentUser.value = response;
    } on AuthException catch (e) {
      safePrint('Could not retrieve current user: ${e.message}');
      currentUser.value = null;
    }
    // Listen for auth events
    Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) {
      safePrint('-------- $event');
      switch (event.type) {
        case AuthHubEventType.signedIn:
          safePrint('-------- User is signed in.');
          currentUser.value = event.payload;
          break;
        case AuthHubEventType.signedOut:
          safePrint('-------- User is signed out.');
          currentUser.value = null;
          break;
        case AuthHubEventType.sessionExpired:
          safePrint('-------- The session has expired.');
          currentUser.value = null;
          break;
        case AuthHubEventType.userDeleted:
          safePrint('-------- The user has been deleted.');
          currentUser.value = null;
          break;
      }
    });

    try {
      final user = await Amplify.Auth.getCurrentUser();
      safePrint('Current user: ${user.userId}');
    } on AuthException catch (e) {
      safePrint('Could not retrieve current user: ${e.message}');
    }
    return this;
  }

  /// Get the latest access token
  Future<String> getLatestAuthToken() async {
    final authSession =
        await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    return authSession.userPoolTokensResult.value.accessToken.raw;
  }

  /// Sign in with the hosted web UI
  Future<void> socialSignIn() async {
    try {
      final result = await _auth.signInWithWebUI(
          //provider: AuthProvider.google,
          );
      safePrint('Sign in result: $result');
    } on AuthException catch (e) {
      safePrint('Error signing in: ${e.message}');
    }
  }

  /// Sign out the current user
  Future<void> signOutCurrentUser() async {
    final result = _auth
      ..signOut(
          options: const SignOutOptions(
        globalSignOut: false,
      ));
    safePrint("Sign out result: $result");
    await Future.delayed(const Duration(seconds: 10));
    safePrint("Waiting done...");
    if (result is CognitoCompleteSignOut) {
      safePrint('Sign out completed successfully');
    } else if (result is CognitoFailedSignOut) {
      safePrint('Error signing user out: $result');
    }
  }

  /// Dispose any resources used by the service.
  void dispose() {}
}
