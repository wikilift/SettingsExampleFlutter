import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferencess/helpers/preferences.dart';
import 'package:shared_preferencess/widgets/side_menu.dart';

import '../services/theme_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const String routerName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //bool isDarkMode = false;
  // int gender = 1;
  // String name = "";
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SharedPreferences',
            textAlign: TextAlign.center,
          ),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Settings', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300, color: Colors.red)),
                const Divider(),
                SwitchListTile.adaptive(
                  value: Preferences.isDarkMode,
                  title: const Text('DarkMode'),
                  onChanged: (value) {
                    Preferences.isDarkMode = value;
                    setState(() {});
                    provider.toogleTheme();
                  },
                ),
                const Divider(),
                RadioListTile(
                    title: const Text('Masculino'),
                    value: 1,
                    groupValue: Preferences.gender,
                    onChanged: (v) {
                      Preferences.gender = v ?? 1;
                      setState(() {});
                    }),
                RadioListTile(
                    title: const Text('Femenino'),
                    value: 2,
                    groupValue: Preferences.gender,
                    onChanged: (v) {
                      Preferences.gender = v ?? 2;
                      setState(() {});
                    }),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    initialValue: Preferences.name,
                    onChanged: (value) {
                      Preferences.name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(labelText: 'Nombre', helperText: 'Nombre de usuario'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
