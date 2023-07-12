import 'package:riyad_test/generated/json/base/json_convert_content.dart';
import 'package:riyad_test/Login/Model/user_registraion_entity.dart';

UserRegistraionEntity $UserRegistraionEntityFromJson(Map<String, dynamic> json) {
	final UserRegistraionEntity userRegistraionEntity = UserRegistraionEntity();
	final int? responseCode = jsonConvert.convert<int>(json['response_code']);
	if (responseCode != null) {
		userRegistraionEntity.responseCode = responseCode;
	}
	final bool? status = jsonConvert.convert<bool>(json['status']);
	if (status != null) {
		userRegistraionEntity.status = status;
	}
	final String? token = jsonConvert.convert<String>(json['token']);
	if (token != null) {
		userRegistraionEntity.token = token;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		userRegistraionEntity.message = message;
	}
	final UserRegistraionUser? user = jsonConvert.convert<UserRegistraionUser>(json['user']);
	if (user != null) {
		userRegistraionEntity.user = user;
	}
	return userRegistraionEntity;
}

Map<String, dynamic> $UserRegistraionEntityToJson(UserRegistraionEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response_code'] = entity.responseCode;
	data['status'] = entity.status;
	data['token'] = entity.token;
	data['message'] = entity.message;
	data['user'] = entity.user?.toJson();
	return data;
}

UserRegistraionUser $UserRegistraionUserFromJson(Map<String, dynamic> json) {
	final UserRegistraionUser userRegistraionUser = UserRegistraionUser();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		userRegistraionUser.id = id;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		userRegistraionUser.email = email;
	}
	final String? firstname = jsonConvert.convert<String>(json['firstname']);
	if (firstname != null) {
		userRegistraionUser.firstname = firstname;
	}
	final String? lastname = jsonConvert.convert<String>(json['lastname']);
	if (lastname != null) {
		userRegistraionUser.lastname = lastname;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		userRegistraionUser.image = image;
	}
	final String? mobno = jsonConvert.convert<String>(json['mobno']);
	if (mobno != null) {
		userRegistraionUser.mobno = mobno;
	}
	final dynamic streetaddress = jsonConvert.convert<dynamic>(json['streetaddress']);
	if (streetaddress != null) {
		userRegistraionUser.streetaddress = streetaddress;
	}
	final dynamic city = jsonConvert.convert<dynamic>(json['city']);
	if (city != null) {
		userRegistraionUser.city = city;
	}
	return userRegistraionUser;
}

Map<String, dynamic> $UserRegistraionUserToJson(UserRegistraionUser entity) {
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