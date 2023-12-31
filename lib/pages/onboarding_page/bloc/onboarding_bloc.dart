import 'package:bloc/bloc.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState()) {

    on<OnboardingEvent>(_nextPage);

  }

  void _nextPage(OnboardingEvent event, Emitter<OnboardingState> emit) {
    emit(OnboardingState(page: state.page));
  }
}
