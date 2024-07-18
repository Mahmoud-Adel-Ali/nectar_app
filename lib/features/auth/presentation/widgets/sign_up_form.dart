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
import 'package:nectar_app/features/auth/presentation/views/login_view.dart';
import 'package:nectar_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:nectar_app/features/auth/presentation/widgets/sign_up_service_and_policy.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool hiddenPassword = true;
  bool hiddenConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpFailure) {
          showAwesomDialog(
            context,
            title: 'Error',
            desc: state.errorMessage,
            dialogType: DialogType.error,
            btnCancel: CustomButtom(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("try again"),
            ),
          );
        } else if (state is SignUpSuccess) {
          showAwesomDialog(context,
              title: 'Success',
              desc: state.signUpModel.message!,
              btnOkText: 'Go to login', btnOkOnPress: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ));
          });
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                  controller: context.read<AuthCubit>().signUpUserName,
                  hintText: "Username",
                  validator: (value) {
                    return validUserName(value);
                  }),
              SizedBox(height: height * 0.04),
              CustomTextFormField(
                controller: context.read<AuthCubit>().signUpPhoneNumber,
                hintText: "Phone",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter your phone number";
                  } else if (value.length > 11) {
                    return 'enter correct phone number , less than 11';
                  }
                  return null;
                },
              ),
              SizedBox(height: height * 0.04),
              CustomTextFormField(
                controller: context.read<AuthCubit>().signUpEmail,
                hintText: "Email",
                validator: (value) {
                  return validatorOfEmail(value);
                },
              ),
              SizedBox(height: height * 0.04),
              CustomTextFormField(
                controller: context.read<AuthCubit>().signUpPassword,
                hintText: "Password",
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
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                controller: context.read<AuthCubit>().signUpConfirmPassword,
                hintText: "Confirme Password",
                validator: (value) {
                  return validatorOfPassword(value);
                },
                obscureText: hiddenConfirmPassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    hiddenConfirmPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    hiddenConfirmPassword = !hiddenConfirmPassword;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: height * 0.02),
              const SignUpServiceAndPolicy(),
              SizedBox(height: height * 0.06),
              state is SignUpLoading
                  ? const CircularProgressIndicator(color: AppColors.mainColor)
                  : CustomButtom(
                      onPressed: () {
                        if (context.read<AuthCubit>().signUpPassword.text !=
                            context
                                .read<AuthCubit>()
                                .signUpConfirmPassword
                                .text) {
                          showSnackBar(context,
                              message: 'password not equal confirnPassword');
                        } else if (context
                            .read<AuthCubit>()
                            .signUpFormKey
                            .currentState!
                            .validate()) {
                          context.read<AuthCubit>().signUp();
                        } else {
                          showSnackBar(context,
                              message: 'please fill all fieldes');
                        }
                      },
                      child: Text(
                        "Sing Up",
                        style: Styless.textStyle18
                            .copyWith(color: AppColors.scaffoldBackground),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
