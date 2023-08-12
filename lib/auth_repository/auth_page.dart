import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opay_clone/common/utils/flutter_toast.dart';
import 'package:opay_clone/pages/home_page/home_page.dart';
import 'package:opay_clone/pages/register_page/register_page.dart';
import '../pages/login_page/login_page.dart';
import 'bloc/auth_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if(state is AuthLoginInitial) {
          return const LoginPage();
        } else if (state is AuthLoadingState || state  is AuthRegisterLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is AuthenticatedState) {
          return const HomePage();
        } else if(state is AuthenticationErrorState) {
          return toastInfo(msg: state.error);
        } else if(state is UnauthenticatedLoginState) {
          return const Text('Unauthenticated user');
        } else if(state is AuthRegisterInitial) {
          return const RegisterPage();
        } else if (state is AuthRegisterState) {
          return const HomePage();
        } else if(state is AuthErrorState) {
          return toastInfo(msg: state.error);
        } else if(state is UnauthenticatedRegisterState) {
          return const Text('Unable to create user');
        }
        return Container();
      },
    );
  }
}
