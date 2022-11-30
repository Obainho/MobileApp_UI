import 'package:bank_app/Widgets/defaults.dart';
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
    return Consumer<AppData>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: value.settingsScaffoldColor,
          appBar: AppBar(
            backgroundColor: value.settingsAppBarColor,
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
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    color: value.settingsImageContainerColor,
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
                  // const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      height: 90,
                      color: value.settingsPrivacyContainerColor,
                      child: Column(
                        children: [
                          const SectionTitle(text: 'Privacy and Security'),
                          ListTile(
                            leading: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color:
                                    value.settingsAutologinIconContainerColor,
                                shape: BoxShape.rectangle,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.lock_outline,
                                color: value.settingsAutologinIconColor,
                              ),
                            ),
                            title: Row(
                              children: const [
                                Text(
                                  'Auto Login on app start',
                                  style: TextStyle(
                                    fontSize: 17,
                                    // color: context.watch<AppData>().settingsAutologinTextColor,
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
                  ),
                  // const SizedBox(height: 10),
                  Container(
                    height: 320,
                    color: value.settingsPrivacyContainerColor,
                    child: Column(
                      children: [
                        const SectionTitle(text: 'Appearance'),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: value.settingsThemeBoxColor,
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
                                      Radius.circular(10),
                                    ),
                                    color: value.settingsThemeBoxDarkColor,
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                      value.changeDataColor(ThemeData.dark());
                                      value.changeapptileDividersColor(
                                          Colors.white70);
                                      value.changeloginTexfieldColor(
                                          const Color.fromARGB(
                                              255, 32, 31, 31));
                                      value.changesettingsScaffoldColor(
                                          const Color.fromARGB(
                                              255, 33, 33, 34));
                                      value.changesettingsAppBarColor(
                                          Defaults.bottomNavBackgroundColor);
                                      value.changesettingsImageContainerColor(
                                          Defaults.bottomNavBackgroundColor);
                                      value.changesettingsPrivacyContainerColor(
                                          const Color.fromARGB(
                                              255, 40, 40, 41));
                                      // value.changesettingsPrivacyTextColor(Colors.white);
                                      value
                                          .changesettingsAutologinIconContainerColor(
                                              const Color.fromARGB(
                                                  255, 61, 62, 63));
                                      value.changesettingsAutologinIconColor(
                                          Defaults.bottomNavItemSelectedColor);
                                      // value.changesettingsAutologinTextColor(Colors.white);
                                      value.changesettingsThemeBoxColor(
                                          Defaults.bottomNavBackgroundColor);
                                      value.changesettingsThemeBoxDarkColor(
                                          Defaults.bottomNavItemSelectedColor);
                                      value
                                          .changesettingsThemeBoxLightButtonColor(
                                              Colors.transparent);
                                      value
                                          .changesettingsThemeBoxSystemDefaultButtonColor(
                                              Colors.transparent);
                                      value.changeThemeDarkButtonTextColor(
                                          Colors.white);
                                      value.changeThemeLightButtonTextColor(
                                          Colors.white);
                                      value
                                          .changeThemeSystemDefaultButtonTextColor(
                                              Colors.white);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Dark',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: value
                                                .settingsDarkButtonTextColor,
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
                                      Radius.circular(10),
                                    ),
                                    color:
                                        value.settingsThemeBoxLightButtonColor,
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                      value.changeDataColor(ThemeData.light());
                                      value.changeapptileDividersColor(
                                          Colors.black87);
                                      value.changeloginTexfieldColor(
                                          const Color.fromARGB(
                                              255, 77, 76, 76));
                                      value.changesettingsScaffoldColor(
                                          const Color.fromARGB(
                                              255, 199, 199, 204));
                                      value.changesettingsAppBarColor(
                                          Defaults.bottomNavItemSelectedColor);
                                      value.changesettingsImageContainerColor(
                                          Defaults.bottomNavItemSelectedColor);
                                      value.changesettingsPrivacyContainerColor(
                                          Colors.white);
                                      // value.changesettingsPrivacyTextColor(Colors.black);
                                      value
                                          .changesettingsAutologinIconContainerColor(
                                              const Color.fromARGB(
                                                  255, 201, 224, 247));
                                      value.changesettingsAutologinIconColor(
                                          Colors.black45);
                                      // value.changesettingsAutologinTextColor(Colors.black);
                                      value.changesettingsThemeBoxColor(
                                          const Color.fromARGB(
                                              255, 199, 199, 204));
                                      value.changesettingsThemeBoxDarkColor(
                                          Colors.transparent);
                                      value
                                          .changesettingsThemeBoxLightButtonColor(
                                              Defaults
                                                  .bottomNavItemSelectedColor);
                                      value
                                          .changesettingsThemeBoxSystemDefaultButtonColor(
                                              Colors.transparent);
                                      value.changeThemeDarkButtonTextColor(
                                          Colors.black);
                                      value.changeThemeLightButtonTextColor(
                                          Colors.white);
                                      value
                                          .changeThemeSystemDefaultButtonTextColor(
                                              Colors.black);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Light',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: value
                                                .settingsLightButtonTextColor,
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
                                      Radius.circular(10),
                                    ),
                                    color: value
                                        .settingsThemeBoxSystemDefaultButtonColor,
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                      value.changeapptileDividersColor(
                                          Colors.white70);
                                      value.changeDataColor(ThemeData.dark());
                                      value.changeloginTexfieldColor(
                                        const Color.fromARGB(255, 32, 31, 31),
                                      );
                                      value.changesettingsScaffoldColor(
                                          const Color.fromARGB(
                                              255, 33, 33, 34));
                                      value.changesettingsAppBarColor(
                                          Defaults.bottomNavBackgroundColor);
                                      value.changesettingsImageContainerColor(
                                          Defaults.bottomNavBackgroundColor);
                                      value.changesettingsPrivacyContainerColor(
                                          const Color.fromARGB(
                                              255, 40, 40, 41));
                                      // value.changesettingsPrivacyTextColor(Colors.white);
                                      value
                                          .changesettingsAutologinIconContainerColor(
                                              const Color.fromARGB(
                                                  255, 61, 62, 63));
                                      value.changesettingsAutologinIconColor(
                                          Defaults.bottomNavItemSelectedColor);
                                      // value.changesettingsAutologinTextColor(Colors.white);
                                      value.changesettingsThemeBoxColor(
                                          Defaults.bottomNavBackgroundColor);
                                      value.changesettingsThemeBoxDarkColor(
                                          Colors.transparent);
                                      value
                                          .changesettingsThemeBoxLightButtonColor(
                                              Colors.transparent);
                                      value
                                          .changesettingsThemeBoxSystemDefaultButtonColor(
                                              Defaults
                                                  .bottomNavItemSelectedColor);
                                      value.changeThemeDarkButtonTextColor(
                                          Colors.white);
                                      value.changeThemeLightButtonTextColor(
                                          Colors.white);
                                      value
                                          .changeThemeSystemDefaultButtonTextColor(
                                              Colors.white);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'System default',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: value
                                                .settingsSystemDefaultButtonTextColor,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: value
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
                                        color: value.settingsAutologinIconColor,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'Theme',
                                      style: TextStyle(
                                        fontSize: 17,
                                        // color: context.watch<AppData>().settingsAutologinTextColor,
                                        //fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                // const SizedBox(width: 95),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 7),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.blue,
                                          radius: 17,
                                        ),
                                      ),
                                      // const SizedBox(width: 10),
                                      Padding(
                                        padding: EdgeInsets.only(right: 7),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.green,
                                          radius: 17,
                                        ),
                                      ),
                                      // const SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Colors.deepOrange,
                                        radius: 17,
                                      ),
                                    ],
                                  ),
                                )
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: value
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
                                        color: value.settingsAutologinIconColor,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'App Icon',
                                      style: TextStyle(
                                        fontSize: 17,
                                        // color: context.watch<AppData>().settingsAutologinTextColor,
                                        //fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                // const SizedBox(width: 125),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 7),
                                        child: CircleAvatar(
                                          backgroundColor: const Color.fromARGB(
                                              255, 216, 212, 212),
                                          radius: 17,
                                          child: Image.asset(
                                              'Assets/icons/access-logo.png'),
                                        ),
                                      ),
                                      // const SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 17,
                                        child: Image.asset(
                                            'Assets/icons/access-logo.png'),
                                      ),
                                    ],
                                  ),
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
                              color: value.settingsAutologinIconContainerColor,
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
                              color: value.settingsAutologinIconColor,
                            ),
                          ),
                          title: Row(
                            children: const [
                              Text(
                                'Intro Video',
                                style: TextStyle(
                                  fontSize: 17,
                                  // color: context.watch<AppData>().settingsAutologinTextColor,
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
            ],
          ),
        );
      },
    );
  }
}
