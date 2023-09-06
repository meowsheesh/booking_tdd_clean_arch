// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelModel _$$_HotelModelFromJson(Map<String, dynamic> json) =>
    _$_HotelModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      adress: json['adress'] as String?,
      minimalPrice: json['minimal_price'] as int?,
      priceForIt: json['price_for_it'] as String?,
      rating: json['rating'] as int?,
      rating_Name: json['rating_name'] as String?,
      image_Urls: (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      aboutTheHotel: json['about_the_hotel'] == null
          ? null
          : AboutHotel.fromJson(
              json['about_the_hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HotelModelToJson(_$_HotelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.adress,
      'minimalPrice': instance.minimalPrice,
      'priceForIt': instance.priceForIt,
      'rating': instance.rating,
      'rating_Name': instance.rating_Name,
      'image_Urls': instance.image_Urls,
      'about_the_hotel': instance.aboutTheHotel,
    };

_$_AboutHotel _$$_AboutHotelFromJson(Map<String, dynamic> json) =>
    _$_AboutHotel(
      description: json['description'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AboutHotelToJson(_$_AboutHotel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };
