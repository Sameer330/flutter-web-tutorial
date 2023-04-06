import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wflutter_1/utils/constants.dart';
import 'package:wflutter_1/widgets/commonContainers.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer5(),
      desktop: (context) => DesktopContainer5(),
    );
  }

  // ------------ For Mobile

  Widget MobileContainer5() {
    return CommonContainerMobile(
      "Use anytime",
      "Use anytime \nwhen \nyou need",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration3,
      false,
    );
  }

  // ------------ For Desktop

  Widget DesktopContainer5() {
    return CommonContainer(
      "Use anytime",
      "Use anytime \nwhen \nyou need",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration3,
      false,
    );
  }
}
