// ignore_for_file: file_names

import 'package:bacalgeria/Config/Constant.dart';
import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    required this.label,
    this.onpressed,
    Key? key,
  }) : super(key: key);

  final String label;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 20,
        width: 180,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
