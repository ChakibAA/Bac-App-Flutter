// ignore_for_file: file_names

import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Screen/Forum/Forum.dart';
import 'package:bacalgeria/Screen/SpecialityHome.dart';
import 'package:bacalgeria/Screen/YearHome.dart';
import 'package:bacalgeria/Widget/HomeButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'البكالوريا',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeButtonCard(
              label: 'بكالوريا سابقة ',
              icon: FontAwesomeIcons.userGraduate,
              onpressed: () {
                Get.to(() => SpecialityHome(
                      title: 'اختر الشعبة',
                      onpressed: () {
                        Get.to(() => YearHome());
                      },
                    ));
              },
            ),
            HomeButtonCard(
              label: 'ملخصات',
              icon: FontAwesomeIcons.book,
              onpressed: () {
                Get.to(() => SpecialityHome(
                      title: 'اختر الشعبة',
                      onpressed: () {
                        Get.to(() => YearHome());
                      },
                    ));
              },
            ),
            HomeButtonCard(
              label: 'اطرح سؤالا',
              icon: FontAwesomeIcons.comment,
              onpressed: () {
                Get.to(() => ForumHome());
              },
            ),
          ],
        ),
      ),
    );
  }
}
