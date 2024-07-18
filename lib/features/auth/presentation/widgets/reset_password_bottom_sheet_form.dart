import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/show_awesome_dialog.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/manager/auth/auth_cubit.dart';
import 'package:nectar_app/features/auth/presentation/manager/functions/valid.dart';
import 'package:nectar_app/features/auth/presentation/views/reset_password_accepted_view.dart';
import 'package:nectar_app/features/auth/presentation/widgets/custom_text_form_field.dart';

class ResetPasswordBottomSheetForm extends StatelessWidget {
  const ResetPasswordBottomSheetForm({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ChangePasswordFailure) {
          showAwesomDialog(context, title: 'Error', desc: state.errorMessage);
        } else if (state is ChangePasswordSuccess) {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => const ResetPasswordAcceptedView()));

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => const ResetPasswordAcceptedView()),
            (Route<dynamic> route) => false, // Remove all previous routes
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().resetPasswordFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: "Email",
                controller: context.read<AuthCubit>().forgetPasswordEmail,
                validator: (value) {
                  return validatorOfEmail(value);
                },
              ),
              SizedBox(height: height * 0.04),
              CustomTextFormField(
                hintText: "Password",
                controller: context.read<AuthCubit>().resetPassword,
                validator: (value) {
                  return validatorOfPassword(value);
                },
              ),
              SizedBox(height: height * 0.04),
              CustomTextFormField(
                hintText: "Confirm Password",
                controller: context.read<AuthCubit>().resetConfirmPassword,
                validator: (value) {
                  return validatorOfPassword(value);
                },
              ),
              SizedBox(height: height * 0.1),
              state is ChangePasswordLoading
                  ? const CircularProgressIndicator(color: AppColors.mainColor)
                  : CustomButtom(
                      onPressed: () {
                        if (context
                                .read<AuthCubit>()
                                .resetConfirmPassword
                                .text !=
                            context.read<AuthCubit>().resetPassword.text) {
                          showAwesomDialog(context,
                              title: 'Error',
                              dialogType: DialogType.error,
                              desc: 'password not equal confirm password');
                        } else if (context
                            .read<AuthCubit>()
                            .resetPasswordFormKey
                            .currentState!
                            .validate()) {
                          context.read<AuthCubit>().changePassword();
                        }
                      },
                      child: Text(
                        "Reset Password",
                        style: Styless.textStyle18
                            .copyWith(color: AppColors.scaffoldBackground),
                      ),
                    ),
              SizedBox(height: height * 0.1),
            ],
          ),
        );
      },
    );
  }
}
