import 'package:flutter/material.dart';
import 'package:sisyphus_app/widgets/app_navigation.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDrawerOpen = Scaffold.of(context).isDrawerOpen;
    return Drawer(
      width: 200,
      shape: isDrawerOpen
          ? null
          : const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          isDrawerOpen
              ? DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Image.asset(
                      'assets/launcher/icon-1024x1024.png'), // Replace with your logo image
                )
              : Container(),
          const AppNavigation(),
        ],
      ),
    );
  }
}
