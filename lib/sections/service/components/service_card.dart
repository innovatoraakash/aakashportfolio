import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '/models/Service.dart';

import '../../../constants.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2, horizontal: log(5.w)),
        height: log(10.w) * 50,
        width: log(10.w) * 50,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(log(5.w) * 6),
              height: log(5.w) * 30,
              width: log(5.w) * 30,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.contain,
              ),
            ),
             SizedBox(height: kDefaultPadding),
            Text(
              services[widget.index].title,
              style: TextStyle(fontSize: log(5.w) * 6),
            ),
          ],
        ),
      ),
    );
  }
}
