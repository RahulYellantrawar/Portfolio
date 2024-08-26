import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/controllers/visibility_controller.dart';
import 'package:portfolio/widgets/about.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/custom_app_bar.dart';
import 'package:portfolio/widgets/drawer.dart';
import 'package:portfolio/widgets/name.dart';
import 'package:portfolio/widgets/skills.dart';

import '../widgets/app_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    VisibilityController controller = Get.put(VisibilityController());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      backgroundColor: kBlack,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              child: SingleChildScrollView(
                controller: controller.scrollController,
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    NameWidget(globalKey: controller.keys[0]),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.08,
                          vertical: size.width * 0.04),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AboutWidget(globalKey: controller.keys[1]),
                          SizedBox(height: widgetSize(size, 100, 80, 40)),
                          SkillWidget(key: controller.keys[2]),
                          SizedBox(height: widgetSize(size, 100, 80, 40)),
                          Center(
                              key: controller.keys[3],
                              child: header(size, 'My Works')),
                          SizedBox(height: widgetSize(size, 50, 40, 20)),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyAppContainer(index: 0),
                              SizedBox(width: 50),
                              MyAppContainer(index: 1)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: widgetSize(size, 100, 80, 40)),
                    ContactWidget(globalKey: controller.keys[4]),
                    SizedBox(
                      height: 200,
                      child: Center(
                        child: Text(
                          '"Thanks for Scrolling"',
                          style: TextStyle(
                              fontFamily: 'SourceSerif4',
                              fontSize: widgetSize(size, 35, 35, 25),
                              color: kYellow),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CustomAppBar(
              size: size,
              scaffoldKey: _scaffoldKey,
            ),
          ],
        ),
      ),
    );
  }
}
