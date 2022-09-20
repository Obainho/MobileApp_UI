import 'package:flutter/material.dart';
import 'defaults.dart';

class AppData with ChangeNotifier {
  ThemeData theme = ThemeData.light();
  Color apptileDividersColor = Colors.black45;
  Color loginTexfieldColor = const Color.fromARGB(255, 77, 76, 76);
  Color settingsScaffoldColor = const Color.fromARGB(255, 199, 199, 204);
  Color settingsAppBarColor = Defaults.bottomNavItemSelectedColor;
  Color settingsImageContainerColor = Defaults.bottomNavItemSelectedColor;
  Color settingsPrivacyContainerColor = Colors.white;
  // Color settingsPrivacyTextColor = Colors.black;
  Color settingsAutologinIconContainerColor = const Color.fromARGB(255, 201, 224, 247);
  Color settingsAutologinIconColor = Colors.black45;
  // Color settingsAutologinTextColor = Colors.black;
  Color settingsThemeBoxColor = const Color.fromARGB(255, 199, 199, 204);
  Color settingsThemeBoxDarkColor = Colors.transparent;
  Color settingsThemeBoxLightButtonColor = Defaults.bottomNavItemSelectedColor;
  Color settingsThemeBoxSystemDefaultButtonColor = Colors.transparent;
  Color settingsDarkButtonTextColor = Colors.black;
  Color settingsLightButtonTextColor = Colors.white;
  Color settingsSystemDefaultButtonTextColor = Colors.black;


  void changeDataColor(ThemeData themeColor) {
    theme = themeColor;
    notifyListeners();
  }

  void changeapptileDividersColor(Color dataColor) {
    apptileDividersColor = dataColor;
    notifyListeners();
  }
  void changeloginTexfieldColor(Color dataColor) {
    loginTexfieldColor = dataColor;
    notifyListeners();
  }
  void changesettingsScaffoldColor(Color dataColor) {
    settingsScaffoldColor = dataColor;
    notifyListeners();
  }
  void changesettingsAppBarColor(Color dataColor) {
    settingsAppBarColor = dataColor;
    notifyListeners();
  }
  void changesettingsImageContainerColor(Color dataColor) {
    settingsImageContainerColor = dataColor;
    notifyListeners();
  }
  void changesettingsPrivacyContainerColor(Color dataColor) {
    settingsPrivacyContainerColor = dataColor;
    notifyListeners();
  }
  // void changesettingsPrivacyTextColor(Color dataColor) {
  //   settingsPrivacyTextColor = dataColor;
  //   notifyListeners();
  // }
  void changesettingsAutologinIconContainerColor(Color dataColor) {
    settingsAutologinIconContainerColor = dataColor;
    notifyListeners();
  }
  void changesettingsAutologinIconColor(Color dataColor) {
    settingsAutologinIconColor = dataColor;
    notifyListeners();
  }
  // void changesettingsAutologinTextColor(Color dataColor) {
  //   settingsAutologinTextColor = dataColor;
  //   notifyListeners();
  // }
  void changeThemeDarkButtonTextColor(Color dataColor) {
    settingsDarkButtonTextColor = dataColor;
    notifyListeners();
  }
  void changeThemeLightButtonTextColor(Color dataColor) {
    settingsLightButtonTextColor = dataColor;
    notifyListeners();
  }
  void changeThemeSystemDefaultButtonTextColor(Color dataColor) {
    settingsSystemDefaultButtonTextColor = dataColor;
    notifyListeners();
  }
  void changesettingsThemeBoxColor(Color dataColor) {
    settingsThemeBoxColor = dataColor;
    notifyListeners();
  }
  void changesettingsThemeBoxDarkColor(Color dataColor) {
    settingsThemeBoxDarkColor = dataColor;
    notifyListeners();
  }
  void changesettingsThemeBoxLightButtonColor(Color dataColor) {
    settingsThemeBoxLightButtonColor = dataColor;
    notifyListeners();
  }
  void changesettingsThemeBoxSystemDefaultButtonColor(Color dataColor) {
    settingsThemeBoxSystemDefaultButtonColor = dataColor;
    notifyListeners();
  }
}
