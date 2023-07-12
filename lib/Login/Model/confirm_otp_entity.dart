import 'package:riyad_test/generated/json/base/json_field.dart';
import 'package:riyad_test/generated/json/confirm_otp_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ConfirmOtpEntity {
	@JSONField(name: "response_code")
	int? responseCode;
	bool? status;
	String? token;
	@JSONField(name: "status_code")
	int? statusCode;
	String? message;
	@JSONField(name: "user_details")
	ConfirmOtpUserDetails? userDetails;

	ConfirmOtpEntity();

	factory ConfirmOtpEntity.fromJson(Map<String, dynamic> json) => $ConfirmOtpEntityFromJson(json);

	Map<String, dynamic> toJson() => $ConfirmOtpEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ConfirmOtpUserDetails {
	int? id;
	String? email;
	String? firstname;
	String? lastname;
	String? image;
	String? mobno;
	dynamic streetaddress    ;
	dynamic city;

	ConfirmOtpUserDetails();

	factory ConfirmOtpUserDetails.fromJson(Map<String, dynamic> json) => $ConfirmOtpUserDetailsFromJson(json);

	Map<String, dynamic> toJson() => $ConfirmOtpUserDetailsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}