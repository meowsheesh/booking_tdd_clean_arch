import 'package:equatable/equatable.dart';

class RoomEntity extends Equatable{
  final int? id;
  final String? name;
  final int? price;
  final String? pricePer;
  final List<String>? peculiarities;
  final List<String>? imageUrls;

  const RoomEntity({
    this.id,
    this.name,
    this.price,
    this.pricePer,
    this.peculiarities,
    this.imageUrls,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    price,
    pricePer,
    peculiarities,
    imageUrls,
  ];

}
