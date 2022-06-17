import 'package:flutter/material.dart';
import 'package:shared_preferencess/screens/home_screen.dart';
import 'package:shared_preferencess/screens/settings_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
              leading: const Icon(Icons.pages_outlined),
              title: const Text('Home'),
              onTap: () => _navigateAndCloseDrawer(context, HomeScreen.routerName)),
          ListTile(
              leading: const Icon(Icons.people_outline),
              title: const Text('Mcwinicks'),
              onTap: () => _navigateAndCloseDrawer(context, HomeScreen.routerName)),
          ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: () => _navigateAndCloseDrawer(context, SettingsScreen.routerName))
        ],
      ),
    );
  }

  _navigateAndCloseDrawer(BuildContext context, String nameOfScreen) {
    Navigator.pop(context);
    Navigator.pushNamed(context, nameOfScreen);
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/menu-img.jpg'),
        fit: BoxFit.cover,
      )),
      child: Container(),
    );
  }
}
