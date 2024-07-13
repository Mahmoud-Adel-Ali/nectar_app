import 'package:dartz/dartz.dart';
import 'package:nectar_app/core/api/api_consumer.dart';
import 'package:nectar_app/core/error/exception.dart';

class UserRepo {
  final ApiConsumer api;

  UserRepo({required this.api});

  Future<Either<String, bool>> signUp() async {
    try {
      return const Right(true);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }

  Future<Either<String, bool>> signIn() async {
    try {
      
      return const Right(true);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }

  Future<Either<String, bool>> getUserProfileData() async {
    try {
      return const Right(true);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }

  Future<Either<String, bool>> updateUser() async {
    try {
      return const Right(true);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }

  Future<Either<String, bool>> deleteUser() async {
    try {
      
      return const Right(true);
    } on ServerException catch (e) {
      return left(e.errorModel.errorMessage);
    }
  }
}
