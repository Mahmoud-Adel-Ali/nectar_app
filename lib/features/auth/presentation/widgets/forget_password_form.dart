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
import 'package:nectar_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:nectar_app/features/auth/presentation/widgets/set_verification_code_sheet.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SendNumForEmailFailure) {
          showAwesomDialog(context,
              title: 'Failed',
              desc: state.errorMessage,
              dialogType: DialogType.error);
        } else if (state is SendNumForEmailSuccess) {
          showAwesomDialog(context, title: 'Success', desc: state.message);
          // setVerificationCodeSheet(context);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().forgetPasswordFormKey,
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
              state is SendNumForEmailLoading
                  ? const CircularProgressIndicator(color: AppColors.mainColor)
                  : CustomButtom(
                      onPressed: () {
                        if (context
                            .read<AuthCubit>()
                            .forgetPasswordFormKey
                            .currentState!
                            .validate()) {
                          // formKey.currentState!.save();
                          context.read<AuthCubit>().sentNumForEmail();
                        }
                      },
                      child: const Text(
                        "Continue",
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
