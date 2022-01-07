import 'package:bacalgeria/Config/Route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_language_fonts/google_language_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bac Algeria',
      locale: const Locale('ar', "DZ"),
      initialRoute: '/',
      getPages: routes,
      theme: ThemeData(fontFamily: ArabicFonts.almarai().fontFamily),
    );
  }
}
