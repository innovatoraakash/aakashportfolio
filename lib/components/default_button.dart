import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // style:ButtonStyle (
      // padding: EdgeInsets.symmetric(
      //   vertical: kDefaultPadding,
      //   horizontal: kDefaultPadding * 2.5,
      // ),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      // backgroundColor: Color(0xFFE8F0F9),
      // ) ,
      onPressed: press(),
      child: Row(
        children: [
          Image.asset(
            imageSrc,
            fit: BoxFit.scaleDown,
          ),
          Text(text),
        ],
      ),
    );
  }
}
