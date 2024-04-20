import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sisyphus_app/router.dart';

class AppNavigation extends StatelessWidget {
  const AppNavigation({super.key});

  static final _links = [
    const NavigationLink(
      title: 'Home',
      icon: Icons.home,
      path: '/',
    ),
    const NavigationLink(
      title: 'Settings',
      icon: Icons.settings,
      path: '/settings',
    ),
    const NavigationLink(
      title: 'Profile',
      icon: Icons.person,
      path: '/profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final link in _links)
          ListTile(
            title: Text(link.title),
            leading: Icon(link.icon),
            selected: GoRouter.of(context).location == link.path,
            onTap: () {
              Scaffold.of(context).isDrawerOpen ? Navigator.pop(context) : null;
              context.go(link.path);
            },
          ),
      ],
    );
  }
}

class NavigationLink {
  final String title;
  final IconData icon;
  final String path;

  const NavigationLink({
    required this.title,
    required this.icon,
    required this.path,
  });
}
