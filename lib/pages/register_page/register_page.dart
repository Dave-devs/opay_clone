import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/pages/register_page/widgets/register_header_text.dart';
import 'package:opay_clone/pages/register_page/widgets/terms_and_condition.dart';
import '../../auth_repository/bloc/auth_bloc.dart';
import '../../common/app_colors/app_colors.dart';
import '../../common/app_strings/app_strings.dart';
import '../../common/utils/app_size.dart';
import '../../common/utils/spacers.dart';
import '../../common/widgets/custom_filled_button.dart';
import '../../common/widgets/text_field_widget.dart';
import '../login_page/widgets/alternative_options.dart';
import '../login_page/widgets/bottom_last_text.dart';
import '../login_page/widgets/divider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

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
                    const HeightSpacer(height: 60),
                    const RegisterHeaderText(),
                    const HeightSpacer(height: 20),
                    const AlternativeLoginOptions(),
                    const HeightSpacer(height: 20),
                    const Dividers(),
                    const HeightSpacer(height: 10),
                    reusableTextField(
                        _nameController,
                        AppStrings.name,
                        AppStrings.nameHint,
                        'name', (value) {// context.read<RegisterBloc>().add(NameEvent(value));
                    }
                    ),
                    const HeightSpacer(height: 10),
                    reusableTextField(
                        _emailController,
                        AppStrings.email,
                        AppStrings.emailHint,
                        'email', (value) {
                      // context.read<RegisterBloc>().add(EmailEvent(value));
                    }),
                    const HeightSpacer(height: 10),
                    reusableTextField(
                        _passwordController,
                        AppStrings.password,
                        AppStrings.passwordHint,
                        'password', (value) {
                      // context.read<RegisterBloc>().add(PasswordEvent(value));
                    }),
                    const HeightSpacer(height: 10),
                    reusableTextField(
                        _confirmPasswordController,
                        AppStrings.password2,
                        AppStrings.passwordHint2,
                        'confirmPassword', (value) {
                      // context.read<RegisterBloc>().add(ConPasswordEvent(value));
                    }
                    ),
                    const HeightSpacer(height: 5),

                    const TermsAndCondition(),

                    const HeightSpacer(height: 5),

                    customFilledButton(AppStrings.getStarted, () {
                      _nameController.text;
                      final email = _emailController.text;
                      final password = _passwordController.text;
                      _confirmPasswordController.text;
                      BlocProvider.of<AuthBloc>(context).add(AuthRegisterEvent(email, password));
                    }),
                    const HeightSpacer(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: const Divider(height: 1.0, thickness: 1.5, color: Colors.grey,),
                    ),
                    const HeightSpacer(height: 20),
                    BottomText(firstText: AppStrings.haveAcct, secondText: AppStrings.login,)
                  ],
                );
              },
              ),
            ),
          ),
        )
    );
  }
}
