import 'package:riyad_test/generated/json/base/json_field.dart';
import 'package:riyad_test/generated/json/gim_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class GimListEntity {
	@JSONField(name: "response_code")
	int? responseCode;
	bool? status;
	String? message;
	List<GimListGyms>? gyms;

	GimListEntity();

	factory GimListEntity.fromJson(Map<String, dynamic> json) => $GimListEntityFromJson(json);

	Map<String, dynamic> toJson() => $GimListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class GimListGyms {
	int? id;
	String? venuename;
	List<String>? venueaminities;
	String? venueimage;
	String? venuepricerange;
	dynamic venuedescription;
	String? venuelocation;
	String? activities;
	String? activitiesimage;
	String? timefrom;
	@JSONField(name: "time_to")
	String? timeTo;
	@JSONField(name: "min_30_price")
	String? min30Price;
	@JSONField(name: "min_60_price")
	String? min60Price;
	@JSONField(name: "min_90_price")
	String? min90Price;
	@JSONField(name: "min_120_price")
	String? min120Price;
	String? indoor;
	String? outdoor;
	List<String>? workingdays;

	GimListGyms();

	factory GimListGyms.fromJson(Map<String, dynamic> json) => $GimListGymsFromJson(json);

	Map<String, dynamic> toJson() => $GimListGymsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}