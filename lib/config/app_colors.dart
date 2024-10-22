import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(71, 168, 68, .1),
  100: const Color.fromRGBO(71, 168, 68, .2),
  200: const Color.fromRGBO(71, 168, 68, .3),
  300: const Color.fromRGBO(71, 168, 68, .4),
  400: const Color.fromRGBO(71, 168, 68, .5),
  500: const Color.fromRGBO(71, 168, 68, .6),
  600: const Color.fromRGBO(71, 168, 68, .7),
  700: const Color.fromRGBO(71, 168, 68, .8),
  800: const Color.fromRGBO(71, 168, 68, .9),
  900: const Color.fromRGBO(71, 168, 68, 1),
};

abstract class AppColors {
  static const Color primary = Color(0XFF47a844);
  static const Color primaryLight = Color(0XFF8cc540);
  static const Color primaryDark = Color(0XFF337b31);
  static const Color primaryText = Colors.white;
  static const Color grey = Color(0XFFF2F2F2);
  static const Color lightGrey = Color(0XFFFCFCFC);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color error = Colors.redAccent;
  static const Color hoverActive = Color(0X551EBE71);

  static MaterialColor primarySwatchColor = MaterialColor(0xFF8BC34A, _swatchOpacity);
}
