// ignore_for_file: file_names
import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Model/Speciality.dart';
import 'package:flutter/material.dart';

import '../Widget/ContentCard.dart';

class SpecialityHome extends StatelessWidget {
  SpecialityHome({
    Key? key,
    required this.title,
    this.onpressed,
  }) : super(key: key);

  final List<Speciality> contents = [
    Speciality(id: '1', titre: 'أداب و فلسفة'),
    Speciality(id: '2', titre: 'لغات أجنبية'),
    Speciality(id: '3', titre: 'علوم تجريبية'),
    Speciality(id: '4', titre: 'رياضيات'),
    Speciality(id: '5', titre: 'تقني رياضي'),
    Speciality(id: '6', titre: 'تسيير و اقتصاد '),
  ];
  final String title;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          title,
          style: const TextStyle(fontSize: 24),
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
            onpressed: onpressed,
          );
        },
      ),
    );
  }
}
