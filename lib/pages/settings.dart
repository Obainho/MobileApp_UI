import 'package:bank_app/defaults.dart';
import 'package:bank_app/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/app_view.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<AppData>(context).settingsScaffoldColor,
      appBar: AppBar(
        backgroundColor: Provider.of<AppData>(context).settingsAppBarColor,
        title: const Text('Settings'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Provider.of<AppData>(context).settingsImageContainerColor,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/Images/icons8-camera-64.png',
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 90,
            color: Provider.of<AppData>(context).settingsPrivacyContainerColor,
            child: Column(
              children: [
                const SectionTitle(text: 'Privacy and Security'),
                ListTile(
                  leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Provider.of<AppData>(context).settingsAutologinIconContainerColor,
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.lock_outline,
                      color: Provider.of<AppData>(context).settingsAutologinIconColor,
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(
                        'Auto Login on app start',
                        style: TextStyle(
                          fontSize: 17,
                          color: Provider.of<AppData>(context).settingsAutologinTextColor,
                          //fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  trailing: const ToggleSwitch(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 320,
            color: Provider.of<AppData>(context).settingsPrivacyContainerColor,
            child: Column(
              children: [
                const SectionTitle(text: 'Appearance'),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color:
                          Provider.of<AppData>(context).settingsThemeBoxColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                            color: Provider.of<AppData>(context)
                                .settingsThemeBoxDarkColor,
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              Provider.of<AppData>(context, listen: false).changeDataColor(ThemeData.dark());
                              Provider.of<AppData>(context, listen: false).changeapptileDividersColor(Colors.white70);
                              Provider.of<AppData>(context, listen: false).changeloginTexfieldColor(const Color.fromARGB(255, 32, 31, 31));
                              Provider.of<AppData>(context, listen: false).changesettingsScaffoldColor(const Color.fromARGB(255, 33, 33, 34));
                              Provider.of<AppData>(context, listen: false).changesettingsAppBarColor(Defaults.bottomNavBackgroundColor);
                              Provider.of<AppData>(context, listen: false).changesettingsImageContainerColor(Defaults.bottomNavBackgroundColor);
                              Provider.of<AppData>(context, listen: false).changesettingsPrivacyContainerColor(const Color.fromARGB(255, 40, 40, 41));
                              Provider.of<AppData>(context, listen: false).changesettingsPrivacyTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinIconContainerColor(const Color.fromARGB(255, 61, 62, 63));
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinIconColor(Defaults.bottomNavItemSelectedColor);
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxColor(Defaults.bottomNavBackgroundColor);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxDarkColor(Defaults.bottomNavItemSelectedColor);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxLightButtonColor(Colors.transparent);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxSystemDefaultButtonColor(Colors.transparent);
                              Provider.of<AppData>(context, listen: false).changeThemeDarkButtonTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changeThemeLightButtonTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changeThemeSystemDefaultButtonTextColor(Colors.white);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dark',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Provider.of<AppData>(context).settingsDarkButtonTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                            color: Provider.of<AppData>(context)
                                .settingsThemeBoxLightButtonColor,
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              Provider.of<AppData>(context, listen: false).changeDataColor(ThemeData.light());
                              Provider.of<AppData>(context, listen: false).changeapptileDividersColor(Colors.black87);
                              Provider.of<AppData>(context, listen: false).changeloginTexfieldColor(const Color.fromARGB(255, 77, 76, 76));
                              Provider.of<AppData>(context, listen: false).changesettingsScaffoldColor(const Color.fromARGB(255, 199, 199, 204));
                              Provider.of<AppData>(context, listen: false).changesettingsAppBarColor(Defaults.bottomNavItemSelectedColor);
                              Provider.of<AppData>(context, listen: false).changesettingsImageContainerColor(Defaults.bottomNavItemSelectedColor);
                              Provider.of<AppData>(context, listen: false).changesettingsPrivacyContainerColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changesettingsPrivacyTextColor(Colors.black);
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinIconContainerColor(const Color.fromARGB(255, 201, 224, 247));
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinIconColor(Colors.black45);
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinTextColor(Colors.black);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxColor(const Color.fromARGB(255, 199, 199, 204));
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxDarkColor(Colors.transparent);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxLightButtonColor(Defaults.bottomNavItemSelectedColor);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxSystemDefaultButtonColor(Colors.transparent);
                              Provider.of<AppData>(context, listen: false).changeThemeDarkButtonTextColor(Colors.black);
                              Provider.of<AppData>(context, listen: false).changeThemeLightButtonTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changeThemeSystemDefaultButtonTextColor(Colors.black);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Light',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Provider.of<AppData>(context).settingsLightButtonTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                            color: Provider.of<AppData>(context)
                                .settingsThemeBoxSystemDefaultButtonColor,
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              Provider.of<AppData>(context, listen: false).changeDataColor(ThemeData.dark());
                              Provider.of<AppData>(context, listen: false).changeapptileDividersColor(Colors.white70);
                              Provider.of<AppData>(context, listen: false).changeloginTexfieldColor(const Color.fromARGB(255, 32, 31, 31),);
                              Provider.of<AppData>(context, listen: false).changesettingsScaffoldColor(const Color.fromARGB(255, 33, 33, 34));
                              Provider.of<AppData>(context, listen: false).changesettingsAppBarColor(Defaults.bottomNavBackgroundColor);
                              Provider.of<AppData>(context, listen: false).changesettingsImageContainerColor(Defaults.bottomNavBackgroundColor);
                              Provider.of<AppData>(context, listen: false).changesettingsPrivacyContainerColor(const Color.fromARGB(255, 40, 40, 41));
                              Provider.of<AppData>(context, listen: false).changesettingsPrivacyTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinIconContainerColor(const Color.fromARGB(255, 61, 62, 63));
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinIconColor(Defaults.bottomNavItemSelectedColor);
                              Provider.of<AppData>(context, listen: false).changesettingsAutologinTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxColor(Defaults.bottomNavBackgroundColor);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxDarkColor(Colors.transparent);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxLightButtonColor(Colors.transparent);
                              Provider.of<AppData>(context, listen: false).changesettingsThemeBoxSystemDefaultButtonColor(Defaults.bottomNavItemSelectedColor);
                              Provider.of<AppData>(context, listen: false).changeThemeDarkButtonTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changeThemeLightButtonTextColor(Colors.white);
                              Provider.of<AppData>(context, listen: false).changeThemeSystemDefaultButtonTextColor(Colors.white);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'System default',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Provider.of<AppData>(context).settingsSystemDefaultButtonTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Provider.of<AppData>(context)
                                .settingsAutologinIconContainerColor,
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            'Assets/icons/icons8-paint-brush-64.png',
                            height: 25,
                            width: 25,
                            color: Provider.of<AppData>(context)
                                .settingsAutologinIconColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Theme',
                          style: TextStyle(
                            fontSize: 17,
                            color: Provider.of<AppData>(context)
                                .settingsAutologinTextColor,
                            //fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 95),
                        const CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 17,
                        ),
                        const SizedBox(width: 10),
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 17,
                        ),
                        const SizedBox(width: 10),
                        const CircleAvatar(
                          backgroundColor: Colors.deepOrange,
                          radius: 17,
                        ),
                      ],
                    ),
                  ),
                ),
                const TileDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Provider.of<AppData>(context)
                                .settingsAutologinIconContainerColor,
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            'Assets/icons/access-logo.png',
                            height: 25,
                            width: 25,
                            color: Provider.of<AppData>(context)
                                .settingsAutologinIconColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'App Icon',
                          style: TextStyle(
                            fontSize: 17,
                            color: Provider.of<AppData>(context)
                                .settingsAutologinTextColor,
                            //fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 125),
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 216, 212, 212),
                          radius: 17,
                          child: Image.asset('Assets/icons/access-logo.png'),
                        ),
                        const SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 17,
                          child: Image.asset('Assets/icons/access-logo.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                const TileDivider(),
                ListTile(
                  leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Provider.of<AppData>(context)
                          .settingsAutologinIconContainerColor,
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'Assets/icons/icons8-play-button-circled-50.png',
                      height: 25,
                      width: 25,
                      color: Provider.of<AppData>(context)
                          .settingsAutologinIconColor,
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(
                        'Intro Video',
                        style: TextStyle(
                          fontSize: 17,
                          color: Provider.of<AppData>(context)
                              .settingsAutologinTextColor,
                          //fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  trailing: const ToggleSwitch(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
