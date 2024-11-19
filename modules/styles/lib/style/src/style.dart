part of '../style.dart';

void setStyleDefault() {
  bool isDark = brightness == Brightness.dark;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
    systemNavigationBarColor:
        isDark ? const Color(0xff222C49) : const Color(0xffFFFFFF),
    systemNavigationBarIconBrightness:
        isDark ? Brightness.light : Brightness.dark,
    statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
  ));
}

AppColors _darkTheme = _TTDarkTheme();
AppColors _lightTheme = _TTLightTheme();

class _TTThemeData {
  AppColors color = _lightTheme;
  // AppColors color = _darkTheme;
  ThemeFont font = ThemeFont();

  registerNotifyUpdated(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeManager>();

  _update({AppColors? color, ThemeFont? font}) {
    if (color != null) {
      this.color = color;
    }
    if (font != null) {
      this.font = font;
    }
  }
}

_TTThemeData get theme => ThemeManager.current;

Brightness get brightness => ThemeManager._brightness;

bool get isDarkLight => (brightness == Brightness.light);

@immutable
class ThemeManager extends InheritedWidget {
  static Brightness _brightness = Brightness.light;
  static final _TTThemeData _themeData = _TTThemeData();

  const ThemeManager({Key? key, required Widget child})
      : super(key: key, child: child);

  static updateThemMode({required bool isDarkMode}) {
    //update mode dark light
    _brightness = isDarkMode ? Brightness.dark : Brightness.light;
    final color = (_brightness == Brightness.light) ? _lightTheme : _darkTheme;
    _themeData._update(color: color);
  }

  static _TTThemeData get current => _themeData;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return this != oldWidget;
  }
}
