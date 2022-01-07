// ignore_for_file: file_names

import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Model/Message.dart';
import 'package:bacalgeria/Widget/MessageCard.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'Add.dart';

class ForumQst extends StatelessWidget {
  ForumQst({Key? key}) : super(key: key);

  final List<Message> contents = [
    Message(
        id: 0,
        value: 'Ullamco consectetur proident ea culpa nostrud.',
        nbrRep: 1),
    Message(
        id: 1,
        value: 'Et mollit nulla magna quis irure consectetur nostrud.',
        nbrRep: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: secondaryColor,
        onPressed: () {
          Get.bottomSheet(ForumAdd(),
              barrierColor: primaryColor.withOpacity(0.15));
        },
        label: const Text('اطرح سؤالا'),
        icon: const FaIcon(FontAwesomeIcons.plusCircle),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'اطرح سؤالا ',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: contents.length,
              itemBuilder: (context, index) {
                return MessageCard(
                  message: contents[index],
                );
              }),
        ],
      ),
    );
  }
}
