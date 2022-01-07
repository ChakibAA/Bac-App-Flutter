// ignore_for_file: file_names
import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Model/Message.dart';
import 'package:bacalgeria/Screen/Forum/Answer.dart';
import 'package:bacalgeria/Screen/Forum/Answers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    required this.message,
    Key? key,
  }) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(12),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateTime.fromMillisecondsSinceEpoch(message.id).toString(),
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
              message.value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                    onPressed: () {
                      Get.bottomSheet(Answer(),
                          barrierColor: primaryColor.withOpacity(0.15));
                    },
                    child: const Text(
                      'أجب على السؤال ',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Text(
                message.nbrRep > 0
                    ? 'عدد الأجوبة : ' + message.nbrRep.toString()
                    : 'لا يوجد جواب',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                    onPressed: () {
                      Get.to(() => Answers());
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.listAlt,
                      color: primaryColor,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
