import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VisibilityController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final visibleIndex = 0.obs;

  final List<GlobalKey> keys = List.generate(5, (index) => GlobalKey());

  void updateVisibleIndex(int index) {
    visibleIndex.value = index;
  }

  void scrollToKey(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox;
      // Calculate the vertical position relative to the scroll controller
      final position = box.localToGlobal(Offset.zero);
      final offset = position.dy + scrollController.offset;

      scrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  /// Horizontal Scrolling
  ///
  // void scrollToKey(GlobalKey key) {
  //   final context = key.currentContext;
  //   print(context);
  //   if (context != null) {
  //     final box = context.findRenderObject() as RenderBox;
  //     final position =
  //         box.localToGlobal(Offset.zero, ancestor: context.findRenderObject());
  //     scrollController.animateTo(
  //       scrollController.offset + position.dx,
  //       duration: const Duration(milliseconds: 500),
  //       curve: Curves.easeInOut,
  //     );
  //   }
  // }
}
