import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/api_service.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/app_router.dart';
import 'features/home/data/repos/home_repo.dart';
import 'features/home/data/repos/home_repo_implement.dart';

void main() async{
  runApp(const BooklyApp());
  Dio dio=Dio();
  ApiService service=ApiService(dio);
  HomeRepo homeRepo=HomeRepoImpl(service);
  print(await homeRepo.getNewestBooks());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: AppColors.kPrimaryColor,
                textTheme:
                    GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
              ),
            ));
  }
}
