import 'package:flutter/material.dart';
import '/components/section_title.dart';
import '/constants.dart';
import '/models/Feedback.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: "Feedback Received",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                feedbacks.length,
                (index) => FeedbackCard(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
