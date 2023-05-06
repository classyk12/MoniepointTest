import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color white = Color(0xfffcfcff);
const Color black = Colors.black;
Color? primaryGreen = Colors.teal;
Color primaryRed = Colors.red.withOpacity(0.5);

//add your styles here
TextStyle titleTextStyle = TextStyle(
  fontSize: 20.sp,
  color: black,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
);

TextStyle subtitleTextStyleGrey = TextStyle(
  fontSize: 12.sp,
  color: const Color(0xff212120),
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w300,
);

TextStyle subtitleTextStyleBoldGrey = TextStyle(
  fontSize: 14.sp,
  color: const Color(0xff767676),
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

TextStyle listingSummaryStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 14.sp,
  color: black,
);
