part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class ChangePageViewEvent extends HomeEvent {
  final int position;

  const ChangePageViewEvent(this.position);

  @override
  List<Object?> get props => [position];
}

class GetRestaurantsEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetBannersEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class GetCategoriesEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
