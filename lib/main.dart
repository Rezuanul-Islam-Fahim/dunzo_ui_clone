import 'package:flutter/material.dart';

import 'theme.dart';
import 'helpers/routes.dart';

import '../screens/landing_screen.dart';

void main() => runApp(DunzoClone());

class DunzoClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dunzo Clone',
      theme: theme(),
      home: LandingScreen(),
      routes: routes(),
    );
  }
}
