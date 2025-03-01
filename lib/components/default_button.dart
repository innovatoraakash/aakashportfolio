import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.press,
  });

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          // horizontal: 12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              height: 30,
              width: 30,
              imageSrc,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(width: 8),
            Text(text),
          ],
        ),
      ),
    );
  }
}
