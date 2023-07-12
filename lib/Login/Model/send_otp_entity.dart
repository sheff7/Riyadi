import 'package:riyad_test/generated/json/base/json_field.dart';
import 'package:riyad_test/generated/json/send_otp_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class SendOtpEntity {
	@JSONField(name: "response_code")
	int? responseCode;
	bool? status;
	String? message;

	SendOtpEntity();

	factory SendOtpEntity.fromJson(Map<String, dynamic> json) => $SendOtpEntityFromJson(json);

	Map<String, dynamic> toJson() => $SendOtpEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}