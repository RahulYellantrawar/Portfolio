import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/controllers/visibility_controller.dart';
import 'package:visibility_detector/visibility_detector.dart';

class NameWidget extends StatelessWidget {
  final GlobalKey globalKey;

  const NameWidget({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return VisibilityDetector(
      key: const Key('Item 0'),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction > 0.5) {
          Get.put(VisibilityController()).updateVisibleIndex(0);
        }
      },
      child: Stack(
        key: globalKey,
        children: [
          Container(
            height: widgetSize(size, 650, 500, 400),
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: kWBlack,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 20,
                    offset: Offset(0, -10))
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "I'M",
                          style: TextStyle(
                            fontFamily: 'Function',
                            color: kWhite,
                            fontSize: widgetSize(size, 35, 25, 20),
                          ),
                        ),
                        TextSpan(
                          text: " Rahul Yellantrawar",
                          style: TextStyle(
                            fontFamily: 'SourceSerif4',
                            color: kYellow,
                            fontSize: widgetSize(size, 60, 45, 30),
                          ),
                        )
                      ],
                    ),
                  ),
                  // const SizedBox(height: 10),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontFamily: 'SourceSerif4',
                      color: kWhite,
                      fontSize: widgetSize(size, 35, 25, 20),
                    ),
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      final controller = Get.find<VisibilityController>();
                      controller.scrollToKey(controller.keys[4]);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: kYellow, width: widgetSize(size, 3, 3, 2)),
                      ),
                      child: Text(
                        'Contact Me',
                        style: TextStyle(
                            fontFamily: 'Function',
                            color: kYellow,
                            fontSize: widgetSize(size, 28, 20, 15)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: widgetSize(size, 50, 30, 10),
              bottom: widgetSize(size, 50, 30, 30),
              child: Column(
                children: [
                  Container(
                    width: 3,
                    color: kYellow,
                    height: widgetSize(size, 100, 80, 50),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                      onTap: () => launchLinkedInProfile(),
                      child: Icon(FontAwesomeIcons.linkedinIn,
                          size: widgetSize(size, 28, 25, 20))),
                  const SizedBox(height: 20),
                  InkWell(
                      onTap: () => launchGitHubProfile(),
                      child: Icon(FontAwesomeIcons.github,
                          size: widgetSize(size, 28, 25, 20))),
                ],
              ))
        ],
      ),
    );
  }
}
