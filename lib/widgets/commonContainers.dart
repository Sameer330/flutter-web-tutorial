import 'package:flutter/material.dart';
import 'package:wflutter_1/utils/colors.dart';
import 'package:wflutter_1/utils/constants.dart';

Widget CommonContainer(String s1, s2, s3, image, bool imageLeft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                s2,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  height: 1.1,
                  fontSize: w! / 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                s3,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColor.primary,
                ),
                label: Text(
                  "Learn more",
                  style: TextStyle(
                    color: AppColor.primary,
                  ),
                ),
              )
            ],
          ),
        ),
        !imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    ),
  );
}
