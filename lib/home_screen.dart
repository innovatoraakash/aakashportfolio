import 'package:aakash_portfolio/sections/topSection/components/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/constants.dart';
import '/sections/about/about_section.dart';
import '/sections/contact/contact_section.dart';
import '/sections/feedback/feedback_section.dart';
import '/sections/recent_work/recent_work_section.dart';
import '/sections/service/service_section.dart';
import '/sections/topSection/top_section.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final List<GlobalKey> dataKey = List.generate(6, (index) => GlobalKey());
    ref.listen(selectedIndexProvider, (previous, next) {
      Scrollable.ensureVisible(dataKey[next].currentContext!);
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(key: dataKey[0]),
            SizedBox(height: kDefaultPadding * 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPaddingDesktop),
              child: Column(
                children: [
                  AboutSection(key: dataKey[1]),
                  ServiceSection(key: dataKey[2]),
                  RecentWorkSection(key: dataKey[3]),
                  FeedbackSection(key: dataKey[4]),
                  SizedBox(height: kDefaultPadding),
                  ContactSection(key: dataKey[5]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
