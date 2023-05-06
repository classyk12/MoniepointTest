import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/utils/theme.dart';
import 'package:marketplace/views/tabs_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: primaryGreen!,
      splashTransition: SplashTransition.fadeTransition,
      curve: Curves.slowMiddle,
      splash: Container(
          height: 94.h,
          width: 248.w,
          color: primaryGreen,
          child: Center(
            child: Row(children: [
              Text('Market Place',
                  style: TextStyle(color: white, fontSize: 19.sp))
            ]),
          )),
      nextScreen: TabsPage(),
      duration: 1500,
    );
  }
}
