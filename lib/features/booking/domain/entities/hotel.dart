import 'package:equatable/equatable.dart';

import '../../data/models/hotel.dart';

class HotelEntity extends Equatable {
  final int? id;
  final String? name;
  final String? adress;
  final int? minimalPrice;
  final String? priceForIt;
  final int? rating;
  final String? rating_Name;
  final List<String>? image_Urls;
  final AboutHotel? aboutTheHotel;

  const HotelEntity(
      {this.id,
      this.name,
      this.adress,
      this.minimalPrice,
      this.priceForIt,
      this.rating,
      this.rating_Name,
      this.image_Urls,
      this.aboutTheHotel,});

  @override
  List<Object?> get props => [
        id,
        name,
        adress,
        minimalPrice,
        priceForIt,
        rating,
        rating_Name,
        image_Urls,
    aboutTheHotel,
      ];
}
