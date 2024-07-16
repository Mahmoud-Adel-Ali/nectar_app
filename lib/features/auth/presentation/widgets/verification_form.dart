// ignore_for_file: must_be_immutable

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/common/widgets/show_awesome_dialog.dart';
import 'package:nectar_app/core/common/widgets/show_snck_bar.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/auth/presentation/manager/auth/auth_cubit.dart';
import 'package:nectar_app/features/auth/presentation/widgets/reset_password_bottom_sheet.dart';

class VerificationForm extends StatelessWidget {
  VerificationForm({super.key});
  bool onEditing = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ConfirmNumFailure) {
          showAwesomDialog(context,
              title: 'Error',
              desc: '${state.errorMessage} , please try again',
              dialogType: DialogType.error);
        } else if (state is ConfirmNumSuccess) {
          Navigator.pop(context);
          resetPasswordBottomSheet(context);
          showSnackBar(context,
              message: state.signUpModel.message.toString(),
              backgroundColor: AppColors.mainColor);
        }
      },
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.mainColor,
                    width: 3,
                  ),
                ),
                alignment: Alignment.center,
                child: FittedBox(
                  child: VerificationCode(
                    length: 6,
                    itemSize: 45,
                    margin: const EdgeInsets.all(5),
                    fillColor: AppColors.mainColor,
                    textStyle:
                        Styless.textStyle18.copyWith(color: Colors.white),
                    keyboardType: TextInputType.number,
                    underlineColor: Colors.purple,
                    cursorColor: Colors.purple,
                    onCompleted: (String value) {
                      context.read<AuthCubit>().confirmNumCode = value;
                    },
                    onEditing: (bool value) {
                      onEditing = value;
                      if (!onEditing) FocusScope.of(context).unfocus();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 50),
              state is ConfirmNumLoading
                  ? const CircularProgressIndicator(color: AppColors.mainColor)
                  : CustomButtom(
                      onPressed: () {
                        context.read<AuthCubit>().confirmNum();
                      },
                      child: const Text(
                        "Send Code",
                        style: Styless.textStyle18,
                      ),
                    ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
