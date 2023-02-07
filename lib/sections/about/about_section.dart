import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '/components/default_button.dart';
import '/components/my_outline_button.dart';
import '/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: const BoxConstraints(maxWidth: 2000),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(log(1.w) * 1.w),
            child: Wrap(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: log(5.w) * 60, child: const FittedBox(fit: BoxFit.scaleDown, child: AboutTextWithSign())),
                        SizedBox(
                          width: log(30.w) * 50,
                          child: const AboutSectionText(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: log(5.w) * 60, child: const FittedBox(fit: BoxFit.scaleDown, child: ExperienceCard(numOfExp: "08"))),
                        SizedBox(
                          width: log(30.w) * 50,
                          child: const AboutSectionText(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
