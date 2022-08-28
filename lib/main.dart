import 'package:bank_app/Widgets/widgets.dart';
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Provider.of<AppData>(context).theme,
          home: const MainPage(),
        );
      },
    );
  }
}
