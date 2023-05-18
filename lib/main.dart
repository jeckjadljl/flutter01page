import 'package:flutter/material.dart';
import 'package:flutter01page/page/Tabs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './side/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1624),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: onGenerateRoute,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: const Tabs());
      },
    );
  }
}
