import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/show_awesome_dialog.dart';
import 'package:nectar_app/core/common/widgets/show_snck_bar.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/manager/auth/auth_cubit.dart';
import 'package:nectar_app/features/auth/presentation/manager/functions/valid.dart';
import 'package:nectar_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:nectar_app/features/auth/presentation/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool hiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          showAwesomDialog(
            context,
            title: 'Error',
            desc: state.errorMessage,
            dialogType: DialogType.error,
          );
        } else if (state is LoginSuccess) {
          showAwesomDialog(context,
              title: 'Success', desc: state.signUpModel.message!);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().logInformKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: "Email",
                controller: context.read<AuthCubit>().loginEmail,
                validator: (value) {
                  return validatorOfEmail(value);
                },
              ),
              SizedBox(height: height * 0.04),
              CustomTextFormField(
                hintText: "Password",
                controller: context.read<AuthCubit>().loginPassword,
                validator: (value) {
                  return validatorOfPassword(value);
                },
                obscureText: hiddenPassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    hiddenPassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    hiddenPassword = !hiddenPassword;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: height * 0.01),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPasswordView(),
                        ));
                  },
                  child: Text(
                    "Forget password?",
                    style: Styless.textStyle14.copyWith(
                        color: AppColors.mainColor,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              state is SignUpLoading
                  ? const CircularProgressIndicator(color: AppColors.mainColor)
                  : CustomButtom(
                      onPressed: () {
                        if (context
                            .read<AuthCubit>()
                            .logInformKey
                            .currentState!
                            .validate()) {
                          context.read<AuthCubit>().login();
                        } else {
                          showSnackBar(context,
                              message: 'please fill all fieldes');
                        }
                      },
                      child: const Text(
                        "Login",
                        style: Styless.textStyle18,
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
