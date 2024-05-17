part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class ChangePageEvent extends MainEvent {
  final int position;

  const ChangePageEvent(this.position);

  @override
  List<Object?> get props => [position];
}
