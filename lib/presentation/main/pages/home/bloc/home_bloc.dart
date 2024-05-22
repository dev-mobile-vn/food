import 'package:bloc/src/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/domain/use_cases/category_usecase.dart';

import '../../../../../data/models/banner/banner_model.dart';
import '../../../../../data/models/restaurant/restaurant_model.dart';
import '../../../../../domain/use_cases/banner_usecase.dart';
import '../../../../../domain/use_cases/restaurant_usecase.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RestaurantUseCase restaurantUseCase;
  final BannerUseCase bannerUseCase;
  final CategoryUseCase categoryUseCase;

  HomeBloc(this.restaurantUseCase, this.bannerUseCase, this.categoryUseCase)
      : super(HomeInitial()) {
    on<ChangePageViewEvent>((event, emit) {
      emit(ChangePageViewState(event.position));
    });
    on<GetBannersEvent>((event, emit) async {
      try {
        final response = await bannerUseCase.getBanners();
        emit(GetBannersState(response.results!));
      } catch (_) {}
    });
    on<GetRestaurantsEvent>((event, emit) async {
      try {
        final response = await restaurantUseCase.getRestaurants();
        emit(GetRestaurantsState(response.results!));
      } catch (_) {}
    });
    on<GetCategoriesEvent>((event, emit) async {
      try {
        await categoryUseCase.getCategories();
      } catch (_) {}
    });
  }

  Future<void> _getRestaurants(
      GetRestaurantsEvent event, Emitter<HomeState> state) async {
    try {
      final response = await restaurantUseCase.getRestaurants();
      emit(GetRestaurantsState(response.results!));
    } catch (_) {}
  }

  Future<void> _getBanners(
      GetBannersEvent event, Emitter<HomeState> state) async {
    try {
      final response = await bannerUseCase.getBanners();
      emit(GetBannersState(response.results!));
    } catch (_) {}
  }
}
