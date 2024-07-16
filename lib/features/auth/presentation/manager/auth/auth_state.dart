part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoading extends AuthState {}

final class SignUpSuccess extends AuthState {
  final SignUpModel signUpModel;

  SignUpSuccess({required this.signUpModel});
}

final class SignUpFailure extends AuthState {
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
}

final class LoginLoading extends AuthState {}

final class LoginSuccess extends AuthState {
  final SignUpModel signUpModel;

  LoginSuccess({required this.signUpModel});
}

final class LoginFailure extends AuthState {
  final String errorMessage;

  LoginFailure({required this.errorMessage});
}

final class SendNumForEmailLoading extends AuthState {}

final class SendNumForEmailSuccess extends AuthState {
  final String message;

  SendNumForEmailSuccess({required this.message});
}

final class SendNumForEmailFailure extends AuthState {
  final String errorMessage;

  SendNumForEmailFailure({required this.errorMessage});
}
//confirmNum

final class ConfirmNumLoading extends AuthState {}

final class ConfirmNumSuccess extends AuthState {
  final SignUpModel signUpModel;

  ConfirmNumSuccess({required this.signUpModel});
}

final class ConfirmNumFailure extends AuthState {
  final String errorMessage;

  ConfirmNumFailure({required this.errorMessage});
}

//ChangePassword
final class ChangePasswordLoading extends AuthState {}

final class ChangePasswordSuccess extends AuthState {
  final String message;

  ChangePasswordSuccess({required this.message});
}

final class ChangePasswordFailure extends AuthState {
  final String errorMessage;

  ChangePasswordFailure({required this.errorMessage});
}