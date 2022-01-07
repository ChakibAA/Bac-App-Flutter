// ignore_for_file: file_names

import 'package:bacalgeria/Config/Constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.defaultDialog(
            title: 'الجواب :',
            content: Text(
              text,
              style: const TextStyle(color: primaryColor),
            ),
            titleStyle: const TextStyle(color: primaryColor));
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(12),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateTime.now().toString(),
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            Expanded(
              child: Text(
                text.length > 50 ? text.substring(0, 50) + " ... " : text,
                maxLines: 2,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
