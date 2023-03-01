import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/app_colors.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repos/home_repo_implement.dart';
import 'features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() async {
  setupServicelocator();
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
        builder: (context, child) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => FeaturedBooksCubit(
                    getIt.get<HomeRepoImpl>(),
                  )..getFeaturedBooks(),
                ),
                BlocProvider(
                  create: (context) => NewestBooksCubit(
                    getIt.get<HomeRepoImpl>(),
                  )..getNewestBooks(),
                ),
              ],
              child: MaterialApp.router(
                routerConfig: AppRouter.router,
                debugShowCheckedModeBanner: false,
                theme: ThemeData.dark().copyWith(
                  scaffoldBackgroundColor: AppColors.kPrimaryColor,
                  textTheme: GoogleFonts.montserratTextTheme(
                      ThemeData.dark().textTheme),
                ),
              ),
            ));
  }
}
