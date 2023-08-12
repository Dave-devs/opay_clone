part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState{}

class AuthRegisterInitial extends AuthState {}

class AuthRegisterLoadingState extends AuthState {}

class AuthRegisterState extends AuthState {
  final User user;

  AuthRegisterState(this.user);
}

class AuthErrorState extends AuthState {
  final String error;

  AuthErrorState(this.error);
}

class UnauthenticatedRegisterState extends AuthState {}

//

class AuthLoginInitial extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthenticatedState extends AuthState {
  final User user;
  AuthenticatedState(this.user);
}

class AuthenticationErrorState extends AuthState {
  final String error;

  AuthenticationErrorState(this.error);
}

class UnauthenticatedLoginState extends AuthState {}
