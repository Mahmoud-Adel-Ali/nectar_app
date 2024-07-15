
import 'package:nectar_app/core/api/api_keys.dart';

class ErrorModel {
  final int status;
  final dynamic message;

  ErrorModel({required this.status, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      status: json[ApiKeys.status],
      message: json[ApiKeys.message],
    );
  }
}
// {
//     "statusCode": 400,
//     "isSuccess": false,
//     "message": "Email is Exist",
//     "data": null
// }