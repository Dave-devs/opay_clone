import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../user_model/user_model.dart';
import '../auth_repository.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository = AuthRepository();
  AuthBloc() : super(AuthInitial()) {

    @override
    Stream<AuthState> loginUser(AuthEvent event) async* {
      if(event is AuthLoginEvent) {
        yield AuthLoadingState();

        final login = await _authRepository.signInWithEmailAndPassword(
            event.email,
            event.password
        );
        if(login != null) {
          yield AuthenticatedState(
              User(
                  uid: login.uid,
                  name: login.displayName!,
                  email: login.email!,
                  photoUrl: login.photoURL!
              )
          );
        } else {
          yield AuthenticationErrorState('Error logging in');
        }
      } else {
        yield UnauthenticatedLoginState();
      }
    }

    @override
    Stream<AuthState> register(AuthEvent event)  async* {
      if(event is AuthRegisterEvent) {
        yield AuthRegisterLoadingState();

        final createUser = await _authRepository.createUserWithEmailAndPassword(
            event.email,
            event.password
        );

        if(createUser != null) {
          yield AuthRegisterState(
              User(
                  uid: createUser.uid,
                  name: createUser.displayName!,
                  email: createUser.email!,
                  photoUrl: createUser.photoURL!
              )
          );
        } else {
          yield AuthErrorState('Error creating user');
        }
      } else {
        yield UnauthenticatedRegisterState();
      }
    }
  }
}