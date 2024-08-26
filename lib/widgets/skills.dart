import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: header(size, 'My Skills'),
        ),
        SizedBox(height: widgetSize(size, 50, 40, 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _skillContainer(size: size, image: 'flutter', name: 'Flutter'),
            const SizedBox(width: 20),
            _skillContainer(size: size, image: 'dart', name: 'Dart'),
            const SizedBox(width: 20),
            _skillContainer(size: size, image: 'firebase', name: 'Firebase'),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _skillContainer(
                size: size, image: 'androidstudio', name: 'Android Studio'),
            const SizedBox(width: 20),
            _skillContainer(size: size, image: 'vscode', name: 'VS Code'),
          ],
        ),
      ],
    );
  }

  Widget _skillContainer(
      {required Size size, required String image, required String name}) {
    return Container(
      height: widgetSize(
          size, size.width * 0.17, size.width * 0.22, size.width * 0.23),
      width: widgetSize(
          size, size.width * 0.17, size.width * 0.22, size.width * 0.23),
      padding: EdgeInsets.all(widgetSize(size, 20, 20, 8)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kBlackBox,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/skills/$image.png',
            filterQuality: FilterQuality.high,
            height: widgetSize(size, 65, size.width * 0.08, size.width * 0.06),
          ),
          SizedBox(height: size.width * 0.04),
          Center(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'SourceSerif4',
                  fontSize: widgetSize(size, 16, 14, size.width * 0.028)),
            ),
          )
        ],
      ),
    );
  }
}
