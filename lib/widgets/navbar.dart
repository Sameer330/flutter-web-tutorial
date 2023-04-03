import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wflutter_1/utils/colors.dart';
import 'package:wflutter_1/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileNavBar(),
      desktop: (context) => DesktopNavBar(),
    );
  }

  // ------------ For Mobile
  Widget MobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  // ------------- For Desktop
  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text(
                "Request a Demo",
                style: TextStyle(
                  color: AppColor.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
    );
  }
}
