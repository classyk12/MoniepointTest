import 'package:flutter/material.dart';
import 'package:marketplace/views/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, widget) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MARKET PLACE',
        home: const SplashScreen(),
        theme: ThemeData(fontFamily: 'Montserrat'),
        builder: (context, widget) {
          ScreenUtil.init(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
      ),
    );
    // return MaterialApp(
    //   title: 'MarketPlace',
    //   theme: ThemeData(fontFamily: 'Montserrat'),
    //   home: const SplashScreen(),
    //   debugShowCheckedModeBanner: false,
    // );
  }
}
