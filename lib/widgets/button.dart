import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/utils/theme.dart';
import 'package:marketplace/utils/util.dart';

class Button extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final double? radius;
  final bool? enable;
  final Color? textColor;
  final Icon? icon;
  final double? fontSize;
  final String? text;
  final Color? borderColor;

  const Button(
      {@required this.onPressed,
      this.width,
      this.height,
      this.color,
      this.radius,
      this.enable = true,
      this.textColor,
      this.icon,
      this.fontSize = 0,
      this.text,
      this.borderColor = Colors.red,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        height: height ?? getHeight(context),
        width: width ?? getWeight(context),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            color: color,
            borderRadius: BorderRadius.circular(radius ?? 10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(text ?? 'Next',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: fontSize == 0 ? 14.sp : fontSize,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        color: textColor ?? white))),
            icon ?? Container() // Icon(Icons.chevron_right, color: white)
          ],
        ),
      ),
    );
  }
}
