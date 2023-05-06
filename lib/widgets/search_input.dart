import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget searchInput({
  required BuildContext context,
  required TextEditingController? controller,
  bool autoFocus = false,
  bool enable = true,
  double? width,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.r)),
          width: width ?? MediaQuery.of(context).size.width * 0.6,
          height: 40.h,
          child: TextFormField(
            enabled: enable,
            autofocus: autoFocus,
            style: TextStyle(color: Colors.grey, fontSize: 16.sp),
            controller: controller,
            decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.w),
                  child: Icon(Icons.search_outlined,
                      size: 25, color: Colors.grey.withOpacity(0.4)),
                ),
                prefixIconConstraints:
                    BoxConstraints(maxHeight: 30.h, maxWidth: 30.w),
                label: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text('Search..',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300)),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.h, horizontal: 15.w),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.withOpacity(0.4))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide:
                        BorderSide(color: Colors.grey.withOpacity(0.4))),
                disabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.withOpacity(0.4))),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.withOpacity(0.4))),
                floatingLabelBehavior: FloatingLabelBehavior.never),
          )),
    ],
  );
}
