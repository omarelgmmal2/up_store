import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/themes/theme_services.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: AppStrings.appName,
          theme: ThemeServices().lightTheme,
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: HomeView(),
    );
  }
}
