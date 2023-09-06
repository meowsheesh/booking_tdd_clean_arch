import 'package:flutter_application_1/features/booking/domain/entities/hotel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@freezed
class HotelModel extends HotelEntity with _$HotelModel  {
  factory HotelModel({
    int? id,
    String? name,
    String? adress,
    int? minimalPrice,
    String? priceForIt,
    int? rating,
    String? rating_Name,
    List<String>? image_Urls,
    @JsonKey(name: 'about_the_hotel') AboutHotel? aboutTheHotel,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}

@freezed
class AboutHotel with _$AboutHotel {
  factory AboutHotel({
    String? description,
    List<String>? peculiarities,
  }) = _AboutHotel;

  factory AboutHotel.fromJson(Map<String, dynamic> json) =>
      _$AboutHotelFromJson(json);
}
