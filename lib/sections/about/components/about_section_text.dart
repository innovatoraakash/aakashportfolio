import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: log(1.w).w),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontWeight: FontWeight.w200, color: kTextColor, height: 2,),
      ),
    );
  }
}
