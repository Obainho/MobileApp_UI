import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widgets/app_view.dart';
import '../Widgets/widgets.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppData>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: value.settingsScaffoldColor,
          appBar: AppBar(
            backgroundColor: value.settingsAppBarColor,
            title: const Text('Quick Services'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  height: 240,
                  color: value.settingsPrivacyContainerColor,
                  child: Column(
                    children: const [
                      SectionTitle(text: 'Transfers'),
                      SectionTiles(
                        image: 'Assets/icons/access-logo.png',
                        text: 'Access to Access',
                        icon: true,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image:
                            'Assets/icons/icons8-add-user-group-man-man-50.png',
                        text: 'Other Banks',
                        icon: true,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image: 'Assets/icons/access-logo.png',
                        text: 'Nearby Payment',
                        icon: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 240,
                  color: value.settingsPrivacyContainerColor,
                  child: Column(
                    children: const [
                      SectionTitle(text: 'Payments'),
                      SectionTiles(
                        image: 'Assets/icons/icons8-paper-99.png',
                        text: 'Bill Payment',
                        icon: true,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image: 'Assets/icons/icons8-mobilephone-64.png',
                        text: 'Mobile Topup',
                        icon: true,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image: 'Assets/icons/icons8-paper-64.png',
                        text: 'LCC Lookup',
                        icon: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
