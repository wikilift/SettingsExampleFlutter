import 'package:flutter/material.dart';
import 'package:shared_preferencess/helpers/preferences.dart';
import 'package:shared_preferencess/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routerName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SharedPreferences',
          textAlign: TextAlign.center,
        ),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkMode: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Gender: ${Preferences.gender}'),
          const Divider(),
          Text('UserName: ${Preferences.name}'),
          const Divider(),
        ],
      ),
    );
  }
}
