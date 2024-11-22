import 'package:food/core/app/app_cubit.dart';
import 'package:food/core/network/dio_client.dart';
import 'package:food/data/datasources/remote/banner/banner_data_resource.dart';
import 'package:food/data/datasources/remote/category/category_data_resource.dart';
import 'package:food/data/datasources/remote/category/category_data_resource_impl.dart';
import 'package:food/data/repositories/banner_repo_impl.dart';
import 'package:food/data/repositories/category_repo_impl.dart';
import 'package:food/data/repositories/restaurant_repository_impl.dart';
import 'package:food/domain/repositories/banner_repo.dart';
import 'package:food/domain/repositories/category_repo.dart';
import 'package:food/domain/repositories/restaurant_repository.dart';
import 'package:food/domain/use_cases/banner_usecase.dart';
import 'package:food/domain/use_cases/category_usecase.dart';
import 'package:food/domain/use_cases/restaurant_usecase.dart';
import 'package:food/presentation/main/pages/home/bloc/home_bloc.dart';
import 'package:food/presentation/main/pages/profile/bloc/profile_bloc.dart';
import 'package:get_it/get_it.dart';
import '../data/datasources/remote/restaurant/restaurant_data_resource.dart';
import '../data/datasources/remote/restaurant/restaurant_data_resource_impl.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt
    ..registerSingleton(AppCubit())
    ..registerSingleton(DioClient())
    ..registerLazySingleton<RestaurantDataResource>(
        () => RestaurantDataResourceImpl())
    ..registerLazySingleton<RestaurantRepository>(
        () => RestaurantRepositoryImpl(getIt.get()))
    ..registerLazySingleton(() => RestaurantUseCase(getIt.get()))
    ..registerLazySingleton<BannerDataResource>(() => BannerDataResource())
    ..registerLazySingleton<BannerRepo>(() => BannerRepoImpl(getIt.get()))
    ..registerLazySingleton<BannerUseCase>(() => BannerUseCase(getIt.get()))
    ..registerLazySingleton<CategoryDataResource>(
        () => CategoryDataResourceImpl())
    ..registerLazySingleton<CategoryRepo>(() => CategoryRepoImpl(getIt.get()))
    ..registerLazySingleton(() => CategoryUseCase(getIt.get()))
    ..registerLazySingleton(() => HomeBloc(
          getIt.get(),
          getIt.get(),
          getIt.get(),
        ))
    ..registerFactory(() => ProfileBloc());
}
