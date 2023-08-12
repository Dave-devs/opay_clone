import 'package:bloc/bloc.dart';
import 'package:opay_clone/auth_repository/auth_repository.dart';
part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final AuthRepository _authRepository;

  SettingBloc(this._authRepository) : super(SettingInitial()) {

    @override
    Stream<SettingState> handleLogOut(SettingEvent event) async* {
      if(event is LogOutButtonEvent) {
        yield AuthLoadingSettingState();

        await _authRepository.signOut();

        yield AuthLogOutSettingState();
      }
    }
  }
}
