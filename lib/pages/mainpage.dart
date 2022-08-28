import 'package:flutter/material.dart';
import '../defaults.dart';
import '../pages/login.dart';
import '../pages/services.dart';
import '../pages/settings.dart';
import '../pages/support.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var indexClicked = 0;
  final pages = const [
    LoginPage(),
    ServicesPage(),
    SupportPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 18, 18, 19),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 60,
        backgroundColor: Defaults.bottomNavBackgroundColor,
        selectedItemColor: Defaults.bottomNavItemSelectedColor,
        unselectedItemColor: const Color.fromARGB(169, 96, 125, 139),
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomNavItemIcon[0]),
            label: Defaults.bottomNavItemText[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomNavItemIcon[1]),
            label: Defaults.bottomNavItemText[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomNavItemIcon[2]),
            label: Defaults.bottomNavItemText[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomNavItemIcon[3]),
            label: Defaults.bottomNavItemText[3],
          ),
        ],
      ),
    );
  }
}
