import 'package:flutter/material.dart';
import 'package:wflutter_1/utils/colors.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: AppColor.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
