import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.35,
      width: size.width * 0.55,

      // constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
      child: FittedBox(
          child: Image.asset(
        "assets/images/aakash_cutout.png",
      )),
    );
  }
}
