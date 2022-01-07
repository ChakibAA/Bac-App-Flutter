// ignore_for_file: file_names

import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Model/Message.dart';
import 'package:bacalgeria/Widget/AnswerCard.dart';
import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Answers({Key? key}) : super(key: key);

  final List<Message> contents = [
    Message(
        id: 0,
        value: 'Ullamco consectetur proident ea culpa nostrud.',
        nbrRep: 1),
    Message(
        id: 1,
        value:
            'Anim fugiat anim voluptate proident laborum incididunt est consectetur id ex. Ut exercitation nulla excepteur nisi occaecat nisi aute. Eiusmod sit aliquip mollit esse ea nisi. Aliqua veniam dolore anim cillum enim occaecat ut sunt. Proident aute excepteur dolor sit deserunt et. Non anim reprehenderit fugiat velit dolor eiusmod eiusmod incididunt mollit aliqua.',
        nbrRep: 0),
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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(12),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'السؤال',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        'Occaecat et ut consectetur exercitation quis.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'الأجوبة :',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: contents.length,
                    itemBuilder: (context, index) {
                      return AnswerCard(
                        text: contents[index].value,
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
