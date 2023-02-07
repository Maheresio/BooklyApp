import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: kPrimaryColor,
                textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme) ,
              ),
              home: const SplashView(),
            ));
  }
}
