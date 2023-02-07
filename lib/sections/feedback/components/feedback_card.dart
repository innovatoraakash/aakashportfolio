import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '/models/Feedback.dart';

import '../../../constants.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(log(1.w)*5),
      child: InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.only(top: kDefaultPadding * 3),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: feedbackBaseSize * 3.5,
          width: feedbackBaseSize * 3.5,
          decoration: BoxDecoration(
            color: feedbacks[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: SizedBox(
            height: feedbackBaseSize * 3.5,
            width: feedbackBaseSize * 3.5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.translate(
                  offset: Offset(0, -hiremeCardOffset),
                  child: AnimatedContainer(
                    duration: duration,
                    height: feedbackBaseSize,
                    width: feedbackBaseSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 10),
                      boxShadow: [if (!isHover) kDefaultCardShadow],
                      image: DecorationImage(
                        image: AssetImage(feedbacks[widget.index].userPic),
                      ),
                    ),
                  ),
                ),
                Text(
                  
                  feedbacks[widget.index].review,
                  style:  TextStyle(
                    color: kTextColor,
                    fontSize: kFeedBackText,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: kDefaultPadding * 2),
                const Text(
                  "Ronald Thompson",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
