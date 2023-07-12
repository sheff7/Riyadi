import 'package:riyad_test/generated/json/base/json_convert_content.dart';
import 'package:riyad_test/Login/Model/send_otp_entity.dart';

SendOtpEntity $SendOtpEntityFromJson(Map<String, dynamic> json) {
	final SendOtpEntity sendOtpEntity = SendOtpEntity();
	final int? responseCode = jsonConvert.convert<int>(json['response_code']);
	if (responseCode != null) {
		sendOtpEntity.responseCode = responseCode;
	}
	final bool? status = jsonConvert.convert<bool>(json['status']);
	if (status != null) {
		sendOtpEntity.status = status;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		sendOtpEntity.message = message;
	}
	return sendOtpEntity;
}

Map<String, dynamic> $SendOtpEntityToJson(SendOtpEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response_code'] = entity.responseCode;
	data['status'] = entity.status;
	data['message'] = entity.message;
	return data;
}