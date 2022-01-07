// ignore_for_file: file_names

import 'package:bacalgeria/Config/Constant.dart';
import 'package:bacalgeria/Widget/Button.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {
  Answer({
    Key? key,
  }) : super(key: key);

  TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  field(),
                  const SizedBox(height: 12),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button(
                          size: const Size(155, 30),
                          colors: Colors.redAccent,
                          child: const Text(
                            'إلغاء',
                            style: TextStyle(color: Colors.white),
                          ),
                          onpressed: () {
                            controller.clear();
                            Get.back();
                          },
                        ),
                        Button(
                          size: const Size(155, 30),
                          colors: primaryColor,
                          child: const Text(
                            'إرسال',
                            style: TextStyle(color: Colors.white),
                          ),
                          onpressed: () async {},
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }

  Container field() {
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 12, right: 12),
      padding: const EdgeInsets.all(12),
      child: SizedBox(
        height: 140,
        child: Form(
          key: formKey,
          child: TextFormField(
            validator: (input) {
              if (input == null || input.isEmpty) {
                return "قدم الجواب";
              }
              if (input.length > 500) {
                return "الجواب يجب ألا تجاوز 200 حرف";
              }

              return null;
            },
            controller: controller,
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            style: const TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
            decoration: InputDecoration(
              alignLabelWithHint: true,
              labelStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
              hintText: ' الجواب',
              labelText: 'أجب على السؤال',
              errorStyle: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(24)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(24)),
              disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(24)),
              errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(24)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(24)),
            ),
          ),
        ),
      ),
    );
  }
}
