import 'dart:ui';

import 'package:flutter/material.dart';

// Wait for PR https://github.com/flutter/flutter/pull/84394
Future<T?> showDraggableBottomSheet<T>(
    {required BuildContext context,
    required Widget child,
    PeekHeight peekHeight = PeekHeight.height_65}) {
  return showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0))),
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: getPeekSize(context, peekHeight),
          minChildSize: 0,
          maxChildSize: getMaxHeightPercentage(context),
          builder: (_, scrollController) => Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0))),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [Container(height: 20), child],
                  ),
                ),
              ),
              Container(
                height: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0))),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffC0C3CF),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  width: 36,
                  height: 4,
                ),
              )
            ],
          ),
        );
      });
}

int getPeekHeight(BuildContext context, PeekHeight peekHeight) {
  int screenHeight = MediaQuery.of(context).size.height as int;

  switch (peekHeight) {
    case PeekHeight.height_65:
      return (screenHeight * 0.65) as int;
    case PeekHeight.full:
    case PeekHeight.wrap:
      return screenHeight;
  }
}

double getPeekSize(BuildContext context, PeekHeight peekHeight) {
  switch (peekHeight) {
    case PeekHeight.height_65:
      return 0.65;
    case PeekHeight.full:
      return getMaxHeightPercentage(context);
    case PeekHeight.wrap:
      return getMaxHeightPercentage(context);
  }
}

double getMaxHeightPercentage(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double statusBarHeight = MediaQueryData.fromWindow(window).padding.top;
  return ((screenHeight - statusBarHeight) / screenHeight);
}

enum PeekHeight { height_65, wrap, full }
