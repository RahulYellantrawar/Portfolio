import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/controllers/visibility_controller.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key, required this.globalKey});
  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return VisibilityDetector(
      key: const Key('Item 1'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.5) {
          Get.put(VisibilityController()).updateVisibleIndex(1);
        }
      },
      child: Column(
        key: globalKey,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(size, 'About'),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: widgetSize(size, 20, 18, 10)),
                width: size.width * 0.05,
                height: 2,
                color: kYellow,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  'I am a passionate Flutter developer with a strong enthusiasm for creating mobile applications that are both functional and visually appealing. My journey in Flutter development has allowed me to explore various aspects of app development, from UI design to integrating backend services. While I may not have extensive industry experience, I have successfully completed two real-time projects that showcase my ability to bring ideas to life through code.',
                  style: TextStyle(
                    fontFamily: 'Function',
                    fontSize: widgetSize(size, 25, 20, 14),
                    color: kWhite.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
