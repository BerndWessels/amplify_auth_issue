import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sisyphus_app/responsive.dart';
import 'package:sisyphus_app/services/auth.dart';
import 'package:sisyphus_app/widgets/app_drawer.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    required this.title,
    this.body,
    this.floatingActionButton,
    super.key,
  });

  final String title;
  final Widget? body;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: Theme.of(context),
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            leading: Builder(
              builder: (context) => ResponsiveVisibility(
                hiddenConditions: const [
                  Condition.largerThan(name: TABLET),
                ],
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  // 4. open the drawer if we have one
                  onPressed: Scaffold.of(context).hasDrawer
                      ? () => Scaffold.of(context).openDrawer()
                      : null,
                ),
              ),
            ),
            title: Text(title),
            centerTitle: true,
            actions: [
              ResponsiveVisibility(
                hiddenConditions: const [
                  Condition.smallerThan(name: DESKTOP),
                ],
                child: IconButton(
                  icon: const Icon(Icons.abc),
                  onPressed: () {},
                ),
              ),
              ResponsiveVisibility(
                hiddenConditions: const [
                  Condition.smallerThan(name: MOBILE),
                ],
                child: IconButton(
                  icon: const Icon(Icons.face),
                  onPressed: () async {
                    try {
                      context.loaderOverlay.show();
                      await GetIt.I<AuthService>().signOutCurrentUser();
                    } finally {
                      context.mounted ? context.loaderOverlay.hide() : null;
                    }
                  },
                ),
              ),
            ]),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > ResponsiveConstants.tabletBreakpoint) {
              return Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const AppDrawer(),
                  Expanded(child: body!),
                ],
              );
            } else {
              return body!;
            }
          },
        ),
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
