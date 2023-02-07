import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget smallScreen;
  final Widget largeScreen;

  const ResponsiveLayout({
    Key? key,
    required this.smallScreen,
    required this.largeScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    bool isTablet = shortestSide >= 600 && shortestSide <= 1024;

    return isTablet ? largeScreen : smallScreen;
  }
}