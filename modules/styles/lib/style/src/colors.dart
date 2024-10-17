part of '../style.dart';

abstract class AppColors {

  abstract Color primaryColor;

  abstract Color textPrimaryColor;

  abstract Color background;
}

class _TTLightTheme extends AppColors{
  @override
  Color background = Colors.white;

  @override
  Color primaryColor = Colors.blue;

  @override
  Color textPrimaryColor = Colors.black87;

}
class _TTDarkTheme extends AppColors{
  @override
  Color background = Colors.black54;

  @override
  Color primaryColor = Colors.grey;

  @override
  Color textPrimaryColor = Colors.white;

}


