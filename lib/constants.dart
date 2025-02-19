import 'package:flutter/material.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

var kFeedBackText = 16.0;
var kDefaultPadding = 20.0;
var kDefaultPaddingDesktop = 120.0;
var hiremeCardOffset = 40.0;
var feedbackBaseSize = 100.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

const kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

setDefaultValuesForMobile() {
  kDefaultPadding = 12.0;
  kDefaultPaddingDesktop = 12.0;
  hiremeCardOffset = 30.0;
  feedbackBaseSize = 70.0;
  kFeedBackText = 12.0;
}
