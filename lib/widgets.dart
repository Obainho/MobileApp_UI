import 'package:flutter/material.dart';
import 'defaults.dart';

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
          style: const TextStyle(fontSize: 13, color: Colors.white70),
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
            image,
            height: 25,
            width: 25,
            color: Defaults.bottomNavItemSelectedColor,
          ),
        ),
        title: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                //fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        trailing: icon
            ? const CircleAvatar(
                radius: 15,
                backgroundColor: Color.fromARGB(255, 61, 62, 63),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                  color: Defaults.bottomNavItemSelectedColor,
                ),
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
    return const Divider(
      height: 17,
      thickness: 0.5,
      color: Colors.white70,
      indent: 17,
      endIndent: 17,
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
          activeTrackColor: Colors.white12,
          inactiveThumbColor: Colors.white38,
          inactiveTrackColor: Colors.white12,
          value: value,
          onChanged: (value) => setState(() => this.value = value),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return buildSwitch();
  }
}

class Appearance extends StatelessWidget {
  const Appearance({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        //color: Colors.white12,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Defaults.bottomNavItemSelectedColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
