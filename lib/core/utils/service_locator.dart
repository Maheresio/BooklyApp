import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_implement.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

setupServicelocator() {
  getIt.registerSingleton<Dio>(
    Dio(),
  );

  getIt.registerSingleton<ApiService>(
    ApiService(
      getIt.get<Dio>(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
