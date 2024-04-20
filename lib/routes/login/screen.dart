import 'package:flutter/material.dart';

/// The login screen.
///
/// This is the screen that is shown when the user is not logged in.
/// It is a safeguard for the short period when the external sign in page
/// returns but the user is not yet logged in.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(child: Text("Login")),
    );
  }
}
