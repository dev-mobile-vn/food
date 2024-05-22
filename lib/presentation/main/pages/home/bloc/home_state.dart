part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class ChangePageViewState extends HomeState {
  final int position;

  const ChangePageViewState(this.position);

  @override
  List<Object?> get props => [position];
}

class GetRestaurantsState extends HomeState {
  final List<RestaurantModel> restaurants;

  const GetRestaurantsState(this.restaurants);

  @override
  List<Object?> get props => [restaurants];
}

class GetBannersState extends HomeState {
  final List<BannerModel> banners;

  const GetBannersState(this.banners);

  @override
  List<Object?> get props => [banners];
}
