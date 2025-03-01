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
                      crossAxisAlignment: 100.w <= 600
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: log(5.w) * 50,
                            child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: AboutTextWithSign())),
                        SizedBox(
                          width: log(30.w) * 60,
                          child: const AboutSectionText(
                            text:
                                "An innovative Computer Engineer Graduate specializing in multiplatform mobile app development using Flutter. Known for a diplomatic and innovative approach, ensuring efficient implementation of client requirements.  Enthusiastic about chess, puzzles, and achieving high-quality results in rapid timelines.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: 100.w <= 600
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            width: log(5.w) * 50,
                            child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: ExperienceCard(numOfExp: "3+"))),
                        SizedBox(
                          width: log(30.w) * 60,
                          child: const AboutSectionText(
                            text:
                                "Proficient in crafting robust app architectures, intuitive UI designs, and seamless REST API integrations for diverse platforms. Successfully completed multiple projects quickly by prioritizing smart work and meticulous attention to detail and skilled in GitHub version control, platform-specific implementations, and the entire app deployment process",
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
