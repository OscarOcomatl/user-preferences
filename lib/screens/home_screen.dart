import 'package:flutter/material.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen  extends StatelessWidget {
  const HomeScreen ({super.key});

  static const String routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      // drawer: Container( // Con esto ya se puede ver el menu lateral  
      //   color: Colors.white,
      // ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Genero: ${Preferences.gender == 1 ? 'Masculino' : 'Femenino'}'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.name}'),
          const Divider()
        ],
      )
    );
  }
}