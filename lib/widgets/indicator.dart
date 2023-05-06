import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/utils/theme.dart';

List<Widget> buildPageIndicator(
    PageController? controller, int totalPages, int currentPage) {
  List<Widget> list = [];
  for (int i = 0; i < totalPages; i++) {
    list.add(i == currentPage ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 1.0.w),
    height: 3.0.h,
    width: isActive ? 12.0.w : 5.w,
    decoration: BoxDecoration(
      color: isActive ? black : const Color.fromARGB(255, 172, 170, 170),
      borderRadius: isActive
          ? BorderRadius.all(Radius.circular(2.r))
          : BorderRadius.all(Radius.circular(10.r)),
    ),
  );
}
