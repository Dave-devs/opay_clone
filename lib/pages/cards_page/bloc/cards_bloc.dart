import 'package:bloc/bloc.dart';
part 'cards_event.dart';
part 'cards_state.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  CardsBloc() : super(CardsInitial()) {
    on<CardsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
