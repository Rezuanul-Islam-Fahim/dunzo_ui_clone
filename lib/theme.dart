import 'package:dunzo_ui_clone/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'helpers/custom_route.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    fontFamily: 'QuickSand',
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CustomPageTransitionBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
