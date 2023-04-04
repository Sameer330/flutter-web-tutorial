import 'package:flutter/material.dart';
import 'package:wflutter_1/pages/containers/container1.dart';
import 'package:wflutter_1/pages/containers/container2.dart';
import 'package:wflutter_1/utils/constants.dart';
import 'package:wflutter_1/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: const [
              NavBar(),
              Container1(),
              Container2(),
            ],
          ),
        ),
      ),
    );
  }
}
