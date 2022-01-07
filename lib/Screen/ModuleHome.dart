// ignore_for_file: file_names

import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Model/Module.dart';
import 'package:bacalgeria/Screen/PDFViewer.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../Widget/ContentCard.dart';

class ModuleHome extends StatelessWidget {
  ModuleHome({
    Key? key,
  }) : super(key: key);

  final List<Module> contents = [Module(titre: 'الرياضيات', id: '1')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'اختر مادة',
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
            label: contents[index].titre,
            onpressed: () {
              Get.to(() => const PDFViewer(
                  url:
                      'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf'));
            },
          );
        },
      ),
    );
  }
}
