import 'data.dart';

class RegisterModel {
	int? statusCode;
	bool? isSuccess;
	String? message;
	Data? data;

	RegisterModel({this.statusCode, this.isSuccess, this.message, this.data});

	factory RegisterModel.fromJson(Map<String, dynamic> json) {
		return RegisterModel(
			statusCode: json['statusCode'] as int?,
			isSuccess: json['isSuccess'] as bool?,
			message: json['message'] as String?,
			data: json['data'] == null
						? null
						: Data.fromJson(json['data'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() {
		return {
			'statusCode': statusCode,
			'isSuccess': isSuccess,
			'message': message,
			'data': data?.toJson(),		};
	}
}
