import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItem extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  final String? title;
  const MenuItem({Key? key, this.icon, this.color, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: color ?? Colors.grey.withOpacity(0.1),
          ),
          child: Icon(icon),
        ),
        SizedBox(height: 8.h),
        Text(title ?? '',
            style: TextStyle(
                fontSize: 10.sp, color: color ?? Colors.grey.withOpacity(0.7)))
      ],
    );
  }
}
