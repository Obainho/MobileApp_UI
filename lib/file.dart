import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppDataa(),
      builder: (context, child) {
        return MaterialApp(
          home: const MainPage(),
          theme: Provider.of<AppDataa>(context).theme,
        );
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      // backgroundColor: Provider.of<AppData>(context).color,
      appBar: AppBar(
        title: Consumer<AppDataa>(
          builder: (context, value, child) {
            return Text(value.name);
          },
        ),
      ),
      body: Screen4(),
    );
  }
}

class Screen4 extends StatelessWidget {
  Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<AppDataa>(
            builder: (context, value, child) {
              return Text(
                value.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 10,
            ),
            onPressed: () {
              context.read<AppDataa>().changeData(
                  "Obainho"); //The "read" function automatically sets "listen" to "false"
              Provider.of<AppDataa>(context, listen: false)
                  .changeDataColor(ThemeData.dark());
              // context.read<AppData>().changeColor(Colors.transparent);
            },
            child: const Text('Change Data'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              elevation: 10,
            ),
            onPressed: () {
              context.read<AppDataa>().changeData(
                  "WildFire"); //The "read" function automatically sets "listen" to "false"
              Provider.of<AppDataa>(context, listen: false)
                  .changeDataColor(ThemeData.light());
              // context.read<AppData>().changeColor(Colors.purple);
            },
            child: const Text('Change Data'),
          ),
        ],
      ),
    );
  }
}

class AppDataa with ChangeNotifier {
  String name = "Using Provider in Flutter";
  ThemeData theme = ThemeData.light();
  Color color = const Color.fromARGB(255, 95, 94, 94);

  void changeData(String data) {
    name = data;
    notifyListeners();
  }

  void changeDataColor(ThemeData themeColor) {
    theme = themeColor;
    notifyListeners();
  }

  void changeColor(Color dataColor) {
    color = dataColor;
    notifyListeners();
  }
}

