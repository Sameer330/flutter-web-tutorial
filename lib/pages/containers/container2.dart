import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wflutter_1/utils/colors.dart';
import 'package:wflutter_1/utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer2(),
      desktop: (context) => DesktopContainer2(),
    );
  }

  Widget MobileContainer2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Helps you to organize your income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColor.primary)),
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_down),
                label: const Text('Try a Demo')),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '— Web, iOs and Android',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget DesktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: -20,
                  top: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(vector1),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector2), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashboard),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(linkedin),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 36,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
