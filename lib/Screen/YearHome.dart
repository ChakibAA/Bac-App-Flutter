// ignore_for_file: file_names

import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Screen/ModuleHome.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../Widget/ContentCard.dart';

class YearHome extends StatelessWidget {
  YearHome({
    Key? key,
  }) : super(key: key);

  final List<String> contents = ['2020'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'اختر السنة',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: false,
      ),
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (2 / 1),
        ),
        itemCount: contents.length,
        itemBuilder: (context, index) {
          return ContentCard(
            label: contents[index],
            onpressed: () {
              Get.to(() => ModuleHome());
            },
          );
        },
      ),
    );
  }
}
