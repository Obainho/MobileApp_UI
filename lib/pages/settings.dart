import 'package:bank_app/defaults.dart';
import 'package:bank_app/widgets.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: const Color.fromARGB(255, 18, 18, 19),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(241, 8, 8, 8),
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
      body: Center(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(241, 8, 8, 8),
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
              color: const Color.fromARGB(255, 40, 40, 41),
              child: Column(
                children: [
                  const SectionTitle(text: 'Privacy and Security'),
                  ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 61, 62, 63),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.lock_outline,
                        color: Defaults.bottomNavItemSelectedColor,
                      ),
                    ),
                    title: Row(
                      children: const [
                        Text(
                          'Auto Login on app start',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
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
              color: const Color.fromARGB(255, 40, 40, 41),
              child: Column(
                children: [
                  const SectionTitle(text: 'Appearance'),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Defaults.bottomNavBackgroundColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Appearance(text: 'Dark'),
                          const Appearance(text: 'Light'),
                          Container(
                            height: 50,
                            width: 120,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10,
                                ),
                              ),
                              color: Defaults.bottomNavItemSelectedColor,
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    'System default',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
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
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 61, 62, 63),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                              'Assets/icons/icons8-paint-brush-64.png',
                              height: 25,
                              width: 25,
                              color: Defaults.bottomNavItemSelectedColor,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Theme',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
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
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 61, 62, 63),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                              'Assets/icons/access-logo.png',
                              height: 25,
                              width: 25,
                              color: Defaults.bottomNavItemSelectedColor,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'App Icon',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              //fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 125),
                          CircleAvatar(
                            backgroundColor: Colors.white,
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
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 61, 62, 63),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        'Assets/icons/icons8-play-button-circled-50.png',
                        height: 25,
                        width: 25,
                        color: Defaults.bottomNavItemSelectedColor,
                      ),
                    ),
                    title: Row(
                      children: const [
                        Text(
                          'Intro Video',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
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
      ),
    );
  }
}
