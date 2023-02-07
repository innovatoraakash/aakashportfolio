import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);

  final String title, subTitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        padding: EdgeInsets.all(log(10) * 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: kDefaultPadding),
              padding: EdgeInsets.only(bottom: log(5.w) * 22),
              width: 8,
              height: 100,
              color: Colors.black,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  subTitle,
                  style: const TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline2!.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
