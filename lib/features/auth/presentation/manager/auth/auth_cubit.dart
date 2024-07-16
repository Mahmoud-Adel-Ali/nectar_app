import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/features/auth/data/models/sign_up_user/sign_up_model.dart';
import 'package:nectar_app/features/auth/data/repos/auth_repo_implementation.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authRepoImplementation}) : super(AuthInitial());
  final AuthRepoImplementation authRepoImplementation;

  TextEditingController signUpUserName = TextEditingController();
  TextEditingController signUpPhoneNumber = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController signUpConfirmPassword = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //
  GlobalKey<FormState> logInformKey = GlobalKey();
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();
  // forget password
  TextEditingController forgetPasswordEmail = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey();

  signUp() async {
    emit(SignUpLoading());
    final response = await authRepoImplementation.signUp(
        username: signUpUserName.text,
        phoneNumber: signUpPhoneNumber.text,
        email: signUpEmail.text,
        password: signUpPassword.text,
        confirmPassword: signUpConfirmPassword.text);
    response.fold(
        (errorMessage) => emit(SignUpFailure(errorMessage: errorMessage)),
        (signUpModel) => emit(SignUpSuccess(signUpModel: signUpModel)));
  }

  login() async {
    emit(SignUpLoading());
    final response = await authRepoImplementation.login(
      email: loginEmail.text,
      password: loginPassword.text,
    );
    response.fold(
        (errorMessage) => emit(LoginFailure(errorMessage: errorMessage)),
        (signUpModel) => emit(LoginSuccess(signUpModel: signUpModel)));
  }

  sentNumForEmail() async {
    emit(SendNumForEmailLoading());
    final response = await authRepoImplementation.sentNumForEmail(
        email: forgetPasswordEmail.text);
    response.fold(
      (errorMessage) =>
          emit(SendNumForEmailFailure(errorMessage: errorMessage)),
      (message) => emit(SendNumForEmailSuccess(message: message)),
    );
  }
}
