import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/mainpage.dart';
import 'Widgets/app_view.dart';

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
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      builder: (context, child) {
        return Consumer<AppData>(
          builder: (context, value, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: value.theme,
              home: const MainPage(),
            );
          },
        );
      },
    );
  }
}
