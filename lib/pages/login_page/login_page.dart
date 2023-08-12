import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/text_field_widget.dart';
import 'package:opay_clone/pages/login_page/widgets/alternative_options.dart';
import 'package:opay_clone/pages/login_page/widgets/bottom_last_text.dart';
import 'package:opay_clone/pages/login_page/widgets/divider.dart';
import 'package:opay_clone/pages/login_page/widgets/login_header_text.dart';
import 'package:opay_clone/pages/login_page/widgets/remember_me.dart';
import '../../auth_repository/bloc/auth_bloc.dart';
import '../../common/utils/app_size.dart';
import '../../common/widgets/custom_filled_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.kWidth,
      height: AppSize.kHeight,
      color: AppColors.kBG,
      child: Scaffold(
        backgroundColor: AppColors.kBG,
        body: SingleChildScrollView(
          child: Expanded(
            child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeightSpacer(height: 110),
                    const LoginHeaderText(),
                    const HeightSpacer(height: 20),
                    const AlternativeLoginOptions(),
                    const HeightSpacer(height: 20),
                    const Dividers(),
                    const HeightSpacer(height: 15),
                    reusableTextField(
                        _emailController,
                        AppStrings.email,
                        AppStrings.emailHint,
                        'email',(value) {
                      // context.read<LoginBloc>().add(EmailEvent(value));
                    }),
                    const HeightSpacer(height: 25),
                    reusableTextField(
                        _passwordController,
                        AppStrings.password,
                        AppStrings.passwordHint,
                        'password', (value) {
                    }),
                    const HeightSpacer(height: 5),
                    const RememberMe(),
                    const HeightSpacer(height: 5),
                    customFilledButton(AppStrings.login, () {
                      final email = _emailController.text;
                      final password = _passwordController.text;
                      BlocProvider.of<AuthBloc>(context).add(AuthLoginEvent(email, password));
                    }),
                    const HeightSpacer(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: const Divider(height: 1.0, thickness: 1.5, color: Colors.grey,),
                    ),
                    const HeightSpacer(height: 20),
                    BottomText(firstText: AppStrings.noAcct, secondText: AppStrings.signUp,)
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}



