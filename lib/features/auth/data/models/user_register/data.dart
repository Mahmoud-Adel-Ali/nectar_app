class Data {
	bool? isAuthenticated;
	String? id;
	String? email;
	String? username;
	String? phoneNumber;
	String? token;

	Data({
		this.isAuthenticated, 
		this.id, 
		this.email, 
		this.username, 
		this.phoneNumber, 
		this.token, 
	});

	factory Data.fromJson(Map<String, dynamic> json) {
		return Data(
			isAuthenticated: json['isAuthenticated'] as bool?,
			id: json['id'] as String?,
			email: json['email'] as String?,
			username: json['username'] as String?,
			phoneNumber: json['phoneNumber'] as String?,
			token: json['token'] as String?,
		);
	}



	Map<String, dynamic> toJson() {
		return {
			'isAuthenticated': isAuthenticated,
			'id': id,
			'email': email,
			'username': username,
			'phoneNumber': phoneNumber,
			'token': token,		};
	}
}
