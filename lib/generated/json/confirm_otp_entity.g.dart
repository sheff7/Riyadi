import 'package:riyad_test/generated/json/base/json_convert_content.dart';
import 'package:riyad_test/Login/Model/confirm_otp_entity.dart';

ConfirmOtpEntity $ConfirmOtpEntityFromJson(Map<String, dynamic> json) {
	final ConfirmOtpEntity confirmOtpEntity = ConfirmOtpEntity();
	final int? responseCode = jsonConvert.convert<int>(json['response_code']);
	if (responseCode != null) {
		confirmOtpEntity.responseCode = responseCode;
	}
	final bool? status = jsonConvert.convert<bool>(json['status']);
	if (status != null) {
		confirmOtpEntity.status = status;
	}
	final String? token = jsonConvert.convert<String>(json['token']);
	if (token != null) {
		confirmOtpEntity.token = token;
	}
	final int? statusCode = jsonConvert.convert<int>(json['status_code']);
	if (statusCode != null) {
		confirmOtpEntity.statusCode = statusCode;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		confirmOtpEntity.message = message;
	}
	final ConfirmOtpUserDetails? userDetails = jsonConvert.convert<ConfirmOtpUserDetails>(json['user_details']);
	if (userDetails != null) {
		confirmOtpEntity.userDetails = userDetails;
	}
	return confirmOtpEntity;
}

Map<String, dynamic> $ConfirmOtpEntityToJson(ConfirmOtpEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response_code'] = entity.responseCode;
	data['status'] = entity.status;
	data['token'] = entity.token;
	data['status_code'] = entity.statusCode;
	data['message'] = entity.message;
	data['user_details'] = entity.userDetails?.toJson();
	return data;
}

ConfirmOtpUserDetails $ConfirmOtpUserDetailsFromJson(Map<String, dynamic> json) {
	final ConfirmOtpUserDetails confirmOtpUserDetails = ConfirmOtpUserDetails();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		confirmOtpUserDetails.id = id;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		confirmOtpUserDetails.email = email;
	}
	final String? firstname = jsonConvert.convert<String>(json['firstname']);
	if (firstname != null) {
		confirmOtpUserDetails.firstname = firstname;
	}
	final String? lastname = jsonConvert.convert<String>(json['lastname']);
	if (lastname != null) {
		confirmOtpUserDetails.lastname = lastname;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		confirmOtpUserDetails.image = image;
	}
	final String? mobno = jsonConvert.convert<String>(json['mobno']);
	if (mobno != null) {
		confirmOtpUserDetails.mobno = mobno;
	}
	final dynamic streetaddress = jsonConvert.convert<dynamic>(json['streetaddress']);
	if (streetaddress != null) {
		confirmOtpUserDetails.streetaddress = streetaddress;
	}
	final dynamic city = jsonConvert.convert<dynamic>(json['city']);
	if (city != null) {
		confirmOtpUserDetails.city = city;
	}
	return confirmOtpUserDetails;
}

Map<String, dynamic> $ConfirmOtpUserDetailsToJson(ConfirmOtpUserDetails entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['email'] = entity.email;
	data['firstname'] = entity.firstname;
	data['lastname'] = entity.lastname;
	data['image'] = entity.image;
	data['mobno'] = entity.mobno;
	data['streetaddress'] = entity.streetaddress;
	data['city'] = entity.city;
	return data;
}