import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wflutter_1/utils/constants.dart';
import 'package:wflutter_1/widgets/commonContainers.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer4(),
      desktop: (context) => DesktopContainer4(),
    );
  }

  // ------------ For Mobile

  Widget MobileContainer4() {
    return CommonContainerMobile(
      "free some cost",
      "Save cost \nfor you and \nfamily",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration2,
      true,
    );
  }

  // ------------ For Desktop

  Widget DesktopContainer4() {
    return CommonContainer(
      "free some cost",
      "Save cost \nfor you and \nfamily",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration2,
      true,
    );
  }
}
