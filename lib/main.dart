import 'package:flutter/material.dart';
import '../pages/mainpage.dart';

void main() {
  runApp(
    const ProfileLoginApp(),
  );
}

class ProfileLoginApp extends StatelessWidget {
  const ProfileLoginApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }
}

