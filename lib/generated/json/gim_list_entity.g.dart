import 'package:riyad_test/generated/json/base/json_convert_content.dart';
import 'package:riyad_test/HomePage/Model/gim_list_entity.dart';

GimListEntity $GimListEntityFromJson(Map<String, dynamic> json) {
	final GimListEntity gimListEntity = GimListEntity();
	final int? responseCode = jsonConvert.convert<int>(json['response_code']);
	if (responseCode != null) {
		gimListEntity.responseCode = responseCode;
	}
	final bool? status = jsonConvert.convert<bool>(json['status']);
	if (status != null) {
		gimListEntity.status = status;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		gimListEntity.message = message;
	}
	final List<GimListGyms>? gyms = jsonConvert.convertListNotNull<GimListGyms>(json['gyms']);
	if (gyms != null) {
		gimListEntity.gyms = gyms;
	}
	return gimListEntity;
}

Map<String, dynamic> $GimListEntityToJson(GimListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['response_code'] = entity.responseCode;
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['gyms'] =  entity.gyms?.map((v) => v.toJson()).toList();
	return data;
}

GimListGyms $GimListGymsFromJson(Map<String, dynamic> json) {
	final GimListGyms gimListGyms = GimListGyms();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		gimListGyms.id = id;
	}
	final String? venuename = jsonConvert.convert<String>(json['venuename']);
	if (venuename != null) {
		gimListGyms.venuename = venuename;
	}
	final List<String>? venueaminities = jsonConvert.convertListNotNull<String>(json['venueaminities']);
	if (venueaminities != null) {
		gimListGyms.venueaminities = venueaminities;
	}
	final String? venueimage = jsonConvert.convert<String>(json['venueimage']);
	if (venueimage != null) {
		gimListGyms.venueimage = venueimage;
	}
	final String? venuepricerange = jsonConvert.convert<String>(json['venuepricerange']);
	if (venuepricerange != null) {
		gimListGyms.venuepricerange = venuepricerange;
	}
	final dynamic venuedescription = jsonConvert.convert<dynamic>(json['venuedescription']);
	if (venuedescription != null) {
		gimListGyms.venuedescription = venuedescription;
	}
	final String? venuelocation = jsonConvert.convert<String>(json['venuelocation']);
	if (venuelocation != null) {
		gimListGyms.venuelocation = venuelocation;
	}
	final String? activities = jsonConvert.convert<String>(json['activities']);
	if (activities != null) {
		gimListGyms.activities = activities;
	}
	final String? activitiesimage = jsonConvert.convert<String>(json['activitiesimage']);
	if (activitiesimage != null) {
		gimListGyms.activitiesimage = activitiesimage;
	}
	final String? timefrom = jsonConvert.convert<String>(json['timefrom']);
	if (timefrom != null) {
		gimListGyms.timefrom = timefrom;
	}
	final String? timeTo = jsonConvert.convert<String>(json['time_to']);
	if (timeTo != null) {
		gimListGyms.timeTo = timeTo;
	}
	final String? min30Price = jsonConvert.convert<String>(json['min_30_price']);
	if (min30Price != null) {
		gimListGyms.min30Price = min30Price;
	}
	final String? min60Price = jsonConvert.convert<String>(json['min_60_price']);
	if (min60Price != null) {
		gimListGyms.min60Price = min60Price;
	}
	final String? min90Price = jsonConvert.convert<String>(json['min_90_price']);
	if (min90Price != null) {
		gimListGyms.min90Price = min90Price;
	}
	final String? min120Price = jsonConvert.convert<String>(json['min_120_price']);
	if (min120Price != null) {
		gimListGyms.min120Price = min120Price;
	}
	final String? indoor = jsonConvert.convert<String>(json['indoor']);
	if (indoor != null) {
		gimListGyms.indoor = indoor;
	}
	final String? outdoor = jsonConvert.convert<String>(json['outdoor']);
	if (outdoor != null) {
		gimListGyms.outdoor = outdoor;
	}
	final List<String>? workingdays = jsonConvert.convertListNotNull<String>(json['workingdays']);
	if (workingdays != null) {
		gimListGyms.workingdays = workingdays;
	}
	return gimListGyms;
}

Map<String, dynamic> $GimListGymsToJson(GimListGyms entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['venuename'] = entity.venuename;
	data['venueaminities'] =  entity.venueaminities;
	data['venueimage'] = entity.venueimage;
	data['venuepricerange'] = entity.venuepricerange;
	data['venuedescription'] = entity.venuedescription;
	data['venuelocation'] = entity.venuelocation;
	data['activities'] = entity.activities;
	data['activitiesimage'] = entity.activitiesimage;
	data['timefrom'] = entity.timefrom;
	data['time_to'] = entity.timeTo;
	data['min_30_price'] = entity.min30Price;
	data['min_60_price'] = entity.min60Price;
	data['min_90_price'] = entity.min90Price;
	data['min_120_price'] = entity.min120Price;
	data['indoor'] = entity.indoor;
	data['outdoor'] = entity.outdoor;
	data['workingdays'] =  entity.workingdays;
	return data;
}