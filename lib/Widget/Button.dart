// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button({
    required this.size,
    required this.onpressed,
    required this.child,
    required this.colors,
    Key? key,
  }) : super(key: key);
  Size size;
  Widget child;
  void Function() onpressed;
  Color colors;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colors),
            fixedSize: MaterialStateProperty.all(size),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
            shadowColor: MaterialStateProperty.all(Colors.black)),
        onPressed: onpressed,
        child: child);
  }
}
