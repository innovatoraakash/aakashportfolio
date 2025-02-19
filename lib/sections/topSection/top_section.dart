import 'package:flutter/material.dart';

import '/constants.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 700;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/pebbel.jpg"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: size.width,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            if (!isMobile)
              const Positioned(
                bottom: 0,
                right: 0,
                child: PersonPic(),
              ),
            if (!isMobile)
              Align(
                alignment: Alignment.bottomCenter,
                child: Menu(),
              ),
          ],
        ),
      ),
    );
  }
}
