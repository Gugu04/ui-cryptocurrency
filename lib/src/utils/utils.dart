import 'package:flutter/material.dart';

class Utils {
  static showModal(BuildContext context, double size, Widget widget) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return DraggableScrollableSheet(
              expand: false,
              initialChildSize: size,
              maxChildSize: size,
              minChildSize: size,
              builder: ((context, scrollController) {
                return widget;
              }));
        });
  }
}
