// ignore_for_file: file_names
import 'package:bacalgeria/Config/Constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeButtonCard extends StatelessWidget {
  const HomeButtonCard({
    required this.icon,
    required this.label,
    required this.onpressed,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String label;
  // ignore: prefer_typing_uninitialized_variables
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(18)),
          child: IconButton(
            onPressed: onpressed,
            icon: FaIcon(
              icon,
              color: Colors.white,
            ),
            iconSize: 80,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: const TextStyle(
              color: primaryColor, fontSize: 26, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
