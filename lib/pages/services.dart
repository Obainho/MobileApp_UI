import 'package:flutter/material.dart';
import '../widgets.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 19),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(241, 8, 8, 8),
        title: const Text('Quick Services'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 240,
              color: const Color.fromARGB(255, 40, 40, 41),
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
                    image: 'Assets/icons/icons8-add-user-group-man-man-50.png',
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
              color: const Color.fromARGB(255, 40, 40, 41),
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
  }
}
