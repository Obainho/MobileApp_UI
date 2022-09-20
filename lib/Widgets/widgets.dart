import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import '../defaults.dart';
import 'app_view.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30, left: 15),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            // color: context.watch<AppData>().settingsPrivacyTextColor,
          ),
        ),
      ],
    );
  }
}

class SectionTiles extends StatelessWidget {
  const SectionTiles({
    Key? key,
    required this.image,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String image;
  final String text;
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      onPressed: () {},
      child: ListTile(
        leading: Consumer<AppData>(
          builder: (context, value, child) {
            return Container(
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
                image,
                height: 25,
                width: 25,
                color: value.settingsAutologinIconColor,
              ),
            );
          },
        ),
        title: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                // color: context.watch<AppData>().settingsAutologinTextColor,
                //fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        trailing: icon
            ? Consumer<AppData>(
                builder: (context, value, child) {
                  return CircleAvatar(
                    radius: 15,
                    backgroundColor: value.settingsAutologinIconContainerColor,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: value.settingsAutologinIconColor,
                    ),
                  );
                },
              )
            : const SizedBox(),
      ),
    );
  }
}

class TileDivider extends StatelessWidget {
  const TileDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppData>(
      builder: (context, value, child) {
        return Divider(
          height: 17,
          thickness: 0.5,
          color: value.apptileDividersColor,
          indent: 17,
          endIndent: 17,
        );
      },
    );
  }
}

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({Key? key}) : super(key: key);

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool value = true;
  Widget buildSwitch() => Transform.scale(
        scale: 1.2,
        child: Switch.adaptive(
          activeColor: Colors.deepOrange,
          activeTrackColor: const Color.fromARGB(115, 218, 124, 62),
          inactiveThumbColor: const Color.fromARGB(97, 165, 160, 160),
          inactiveTrackColor: const Color.fromARGB(115, 66, 66, 66),
          value: value,
          onChanged: (value) => setState(() => this.value = value),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return buildSwitch();
  }
}
