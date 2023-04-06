import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wflutter_1/utils/constants.dart';
import 'package:wflutter_1/widgets/commonContainers.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer3(),
      desktop: (context) => DesktopContainer3(),
    );
  }

  // ------------ For Mobile

  Widget MobileContainer3() {
    return CommonContainerMobile(
      "ALWAYS ONLINE",
      "Real-Time \nsupport \nwith cloud",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration1,
      false,
    );
  }

  // ------------ For Desktop

  Widget DesktopContainer3() {
    return CommonContainer(
      "ALWAYS ONLINE",
      "Real-Time \nsupport \nwith cloud",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration1,
      false,
    );
  }
}
