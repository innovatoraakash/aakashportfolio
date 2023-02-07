import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.all(kDefaultPadding),
        height: 240,
        width: 255,
        decoration: BoxDecoration(
          color: const Color(0xFFF7E8FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0xFFEDD2FC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 6,
                color: const Color(0xFFA600FF).withOpacity(0.25),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "About Me",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2!.copyWith(fontWeight: FontWeight.bold, color: Colors.black, fontSize: log(2.w) * 16),
                ),
              ),
              Image.asset(
                "assets/images/sign.png",
                fit: BoxFit.scaleDown,
              )
            ],
          ),
        ),
      ),
    );
  }
}
