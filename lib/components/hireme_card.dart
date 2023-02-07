import 'package:aakash_portfolio/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPaddingDesktop),
      width: 90.w,
      child: Card(
        elevation: 10,
        child: ListTile(
          leading: Image.asset(
            "assets/images/email.png",
            fit: BoxFit.contain,
          ),
          title: const Text(
            "Starting New Project?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "Get an estimate for the new project",
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
          trailing: FittedBox(
            fit: BoxFit.scaleDown,
            child: DefaultButton(
              text: "Hire Me!",
              imageSrc: "assets/images/hand.png",
              press: () {},
            ),
          ),
        ),
      ),
    );
    // return Container(
    //   padding: EdgeInsets.all(kDefaultPadding * 2),
    //   constraints: const BoxConstraints(maxWidth: 1110),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(20),
    //     boxShadow: [kDefaultShadow],
    //   ),
    //   Row(
    //     children: [
    //       Image.asset(
    //         "assets/images/email.png",
    //         height: 80,
    //         width: 80,
    //       ),
    //       const Padding(
    //         padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
    //         child: SizedBox(
    //           height: 80,
    //           child: VerticalDivider(),
    //         ),
    //       ),
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: const [
    //             Text(
    //               "Starting New Project?",
    //               style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
    //             ),
    //             SizedBox(height: kDefaultPadding / 2),
    //             Text(
    //               "Get an estimate for the new project",
    //               style: TextStyle(fontWeight: FontWeight.w200),
    //             )
    //           ],
    //         ),
    //       ),
    //       DefaultButton(
    //         text: "Hire Me!",
    //         imageSrc: "assets/images/hand.png",
    //         press: () {},
    //       )
    //     ],
    //   ),
    // );
  }
}
