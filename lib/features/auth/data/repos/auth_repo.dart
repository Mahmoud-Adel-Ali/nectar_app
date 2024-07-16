import 'package:dartz/dartz.dart';
import 'package:nectar_app/features/auth/data/models/sign_up_user/sign_up_model.dart';

abstract class AuthRepo {
  Future<Either<String, SignUpModel>> signUp({
    required String username,
    required String phoneNumber,
    required String email,
    required String password,
    required String confirmPassword,
  });

  Future<Either<String, SignUpModel>> login({
    required String email,
    required String password,
  });

  Future<Either<String, dynamic>> sentNumForEmail({
    required String email,
  });

  Future<Either<String, SignUpModel>> confirmNum({required String code});

  Future<Either<String, dynamic>> changePassword({
    required String email,
    required String password,
    required String confirmPassword,
  });
}
