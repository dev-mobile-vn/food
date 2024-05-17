part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();
}

class MainInitial extends MainState {
  @override
  List<Object> get props => [];
}

class ChangePageState extends MainState {
  final int position;

  const ChangePageState(this.position);

  @override
  List<Object?> get props => [position];
}
