import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widgets/app_view.dart';
import '../Widgets/widgets.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({
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
            title: const Text('Support'),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 5),
                    child: Text(
                      'App version: 2.2.0',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            child: ListView(
              children: [
                const SizedBox(height: 10),
                Container(
                  height: 165,
                  color: value.settingsPrivacyContainerColor,
                  child: Column(
                    children: const [
                      SectionTitle(text: 'Support'),
                      SectionTiles(
                        image: 'Assets/icons/icons8-add-folder-80.png',
                        text: 'Access Inflow Details',
                        icon: true,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image: 'Assets/icons/icons8-question-67.png',
                        text: 'FAQ',
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
                      SectionTitle(text: 'Social Media'),
                      SectionTiles(
                        image: 'Assets/icons/icons8-twitter-50.png',
                        text: '@accessbank_help',
                        icon: false,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image: 'Assets/icons/icons8-facebook-f-50.png',
                        text: 'AccessBankPlc',
                        icon: false,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image: 'Assets/icons/icons8-instagram-50.png',
                        text: '@access_more',
                        icon: false,
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
                      SectionTitle(text: 'Call us'),
                      SectionTiles(
                        image: 'Assets/icons/icons8-headset-50.png',
                        text: '01-2712005-7',
                        icon: false,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image: 'Assets/icons/icons8-headset-50.png',
                        text: '01-2802500',
                        icon: false,
                      ),
                      TileDivider(),
                      SectionTiles(
                        image: 'Assets/icons/icons8-headset-50.png',
                        text: '0700CALLACCESS',
                        icon: false,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 90,
                  color: value.settingsPrivacyContainerColor,
                  child: Column(
                    children: const [
                      SectionTitle(text: 'Transfers'),
                      SectionTiles(
                        image: 'Assets/icons/icons8-chat-64.png',
                        text: 'contactcenter@acce...',
                        icon: false,
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
