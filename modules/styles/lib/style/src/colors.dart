part of '../style.dart';

abstract class AppColors {
  abstract Color primaryColor;

  abstract Color textPrimaryColor;

  abstract Color textPrimary2Color;

  abstract Color background;

  abstract Color white;

  final Color purpleAccent = Colors.purpleAccent;
  final Color blue = Colors.blue;
  final Color grey = Colors.grey;

}

class _TTLightTheme extends AppColors {
  @override
  Color background = const Color.fromARGB(255, 241, 248, 251);

  @override
  Color primaryColor = Colors.blue;

  @override
  Color textPrimaryColor = Colors.black87;

  @override
  Color textPrimary2Color = Colors.black87;

  @override
  Color white = Colors.white;


}

class _TTDarkTheme extends AppColors {
  @override
  Color background = Colors.black54;

  @override
  Color primaryColor = Colors.grey;

  @override
  Color textPrimaryColor = Colors.white;

  @override
  Color textPrimary2Color = Colors.white70;

  @override
  Color white = Colors.black12;
}
