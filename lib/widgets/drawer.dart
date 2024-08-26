import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/controllers/visibility_controller.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    VisibilityController controller = Get.put(VisibilityController());
    return Drawer(
      shape: const RoundedRectangleBorder(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Text(
                'Rahul Yellantrawar',
                style: TextStyle(fontFamily: 'SourceSerif4', fontSize: 20),
              ),
              const SizedBox(height: 20),
              _menuItems(controller, 0, 'Portfolio', controller.keys[0]),
              SizedBox(width: size.width * 0.03),
              _menuItems(controller, 1, 'About', controller.keys[1]),
              SizedBox(width: size.width * 0.03),
              _menuItems(controller, 4, 'Contact', controller.keys[4]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuItems(VisibilityController controller, int index, String itemName,
      GlobalKey gKey) {
    return InkWell(
      onTap: () => controller.scrollToKey(gKey),
      child: Text(
        itemName,
        style: TextStyle(
          fontFamily: 'Function',
          color: controller.visibleIndex.value == index
              ? kWhite
              : kWhite.withOpacity(0.6),
        ),
      ),
    );
  }
}
