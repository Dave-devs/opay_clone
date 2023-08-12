import 'package:bloc/bloc.dart';
part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavState()) {

    on<NavigateEvent>(_navigateEvent);
  }

  void _navigateEvent(NavigateEvent event, Emitter<BottomNavState> emit) {
    emit(BottomNavState(index: state.index));
  }
}
