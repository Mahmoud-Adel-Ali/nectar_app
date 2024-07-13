
import 'package:nectar_app/core/api/api_keys.dart';

class ErrorModel {
  final int status;
  final dynamic errorMessage;

  ErrorModel({required this.status, required this.errorMessage});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      status: json[ApiKeys.status],
      errorMessage: json[ApiKeys.errorMessage],
    );
  }
}
