import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/controllers/visibility_controller.dart';

class CustomAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomAppBar({
    super.key,
    required this.size,
    required this.scaffoldKey,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    VisibilityController controller = Get.put(VisibilityController());
    // final List<GlobalKey> keys = List.generate(5, (index) => GlobalKey());
    // print(keys);
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 60,
          color: kWBlack,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  size.width < 650
                      ? IconButton(
                          onPressed: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          icon: const Icon(Icons.menu))
                      : const SizedBox(),
                  const Text(
                    'Rahul Yellantrawar',
                    style: TextStyle(fontFamily: 'SourceSerif4', fontSize: 20),
                  ),
                ],
              ),
              size.width < 650
                  ? const SizedBox()
                  : Obx(
                      () => Row(
                        children: [
                          _menuItems(
                              controller, 0, 'Portfolio', controller.keys[0]),
                          SizedBox(width: size.width * 0.03),
                          _menuItems(
                              controller, 1, 'About', controller.keys[1]),
                          SizedBox(width: size.width * 0.03),
                          _menuItems(
                              controller, 4, 'Contact', controller.keys[4]),
                          SizedBox(width: size.width * 0.02),
                        ],
                      ),
                    ),
            ],
          ),
        ));
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
