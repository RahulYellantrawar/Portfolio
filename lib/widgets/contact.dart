import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/controllers/visibility_controller.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key, required this.globalKey});

  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return VisibilityDetector(
      key: const Key('Item 4'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.5) {
          Get.put(VisibilityController()).updateVisibleIndex(4);
        }
      },
      child: Stack(
        key: globalKey,
        children: [
          Container(
            height: 300,
            margin: const EdgeInsets.only(top: 30),
            color: kWBlack,
            child: size.width < 650
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _contactContainer(Icons.mail_outline_rounded,
                            'yellantrawrrahul7847@gmail.com'),
                        const SizedBox(height: 15),
                        _contactContainer(
                            Icons.phone_outlined, '+91 9912996370'),
                        const SizedBox(height: 15),
                        _contactContainer(
                            Icons.location_on_outlined, 'Hyderabad, India'),
                      ],
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _contactContainer(Icons.mail_outline_rounded,
                              'yellantrawrrahul7847@gmail.com'),
                          const SizedBox(width: 20),
                          _contactContainer(
                              Icons.phone_outlined, '+91 9912996370'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _contactContainer(
                              Icons.location_on_outlined, 'Hyderabad, India'),
                        ],
                      ),
                    ],
                  ),
          ),
          Row(children: [
            _yellowLine(),
            const SizedBox(width: 20),
            header(size, 'Contact Me'),
            const SizedBox(width: 20),
            _yellowLine(),
          ]),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // width: 50,
              height: 3,
              color: kYellow,
            ),
          ),
        ],
      ),
    );
  }

  Widget _yellowLine() {
    return Expanded(
      child: Container(
        // width: 50,
        height: 3,
        color: kYellow,
      ),
    );
  }

  Container _contactContainer(IconData iconData, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kBlack,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData),
          const SizedBox(width: 15),
          Text(
            value,
            style:
                TextStyle(fontFamily: 'Function', color: kYellow, fontSize: 18),
          )
        ],
      ),
    );
  }
}
