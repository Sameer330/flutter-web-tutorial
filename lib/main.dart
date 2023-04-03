import 'package:flutter/material.dart';
import 'package:wflutter_1/pages/home.dart';
import 'package:wflutter_1/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Xpense",
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        brightness: Brightness.light,
        primaryColor: AppColor.primary,
      ),
      home: const Home(),
    );
  }
}
