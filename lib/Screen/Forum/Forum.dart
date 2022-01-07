// ignore_for_file: file_names
import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Model/Speciality.dart';
import 'package:bacalgeria/Widget/ContentCard.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'Qst.dart';

class ForumHome extends StatelessWidget {
  ForumHome({Key? key}) : super(key: key);

  final List<Speciality> contents = [
    Speciality(id: '1', titre: 'أداب و فلسفة'),
    Speciality(id: '2', titre: 'لغات أجنبية'),
    Speciality(id: '3', titre: 'علوم تجريبية'),
    Speciality(id: '4', titre: 'رياضيات'),
    Speciality(id: '5', titre: 'تقني رياضي'),
    Speciality(id: '6', titre: 'تسيير و اقتصاد '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'اطرح سؤالا ',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'اختر الشعبة',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (2 / 1),
                ),
                itemCount: contents.length,
                itemBuilder: (context, index) {
                  return ContentCard(
                      label: contents[index].titre,
                      onpressed: () {
                        Get.to(() => ForumQst());
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
