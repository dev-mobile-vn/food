import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<ChangePageEvent>((event, emit) {
      emit(ChangePageState(event.position));
    });
  }
}
