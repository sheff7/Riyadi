import 'package:riyad_test/generated/json/base/json_field.dart';
import 'package:riyad_test/generated/json/user_registraion_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserRegistraionEntity {
	@JSONField(name: "response_code")
	int? responseCode;
	bool? status;
	String? token;
	String? message;
	UserRegistraionUser? user;

	UserRegistraionEntity();

	factory UserRegistraionEntity.fromJson(Map<String, dynamic> json) => $UserRegistraionEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserRegistraionEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserRegistraionUser {
	int? id;
	String? email;
	String? firstname;
	String? lastname;
	String? image;
	String? mobno;
	dynamic streetaddress    ;
	dynamic city;

	UserRegistraionUser();

	factory UserRegistraionUser.fromJson(Map<String, dynamic> json) => $UserRegistraionUserFromJson(json);

	Map<String, dynamic> toJson() => $UserRegistraionUserToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}