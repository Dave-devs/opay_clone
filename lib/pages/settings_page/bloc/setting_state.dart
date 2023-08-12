part of 'setting_bloc.dart';

abstract class SettingState {}

class SettingInitial extends SettingState {} //Back to login screen

class AuthLoadingSettingState extends SettingState {} //Loading button after event call

class AuthLogOutSettingState extends SettingState {} //LogOut success

class AuthLogoutErrorState extends SettingState{  //Error logging out
  final String error;

  AuthLogoutErrorState(this.error);
}