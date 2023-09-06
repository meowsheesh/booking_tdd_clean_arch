import 'package:flutter_application_1/features/booking/domain/entities/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class RoomModel extends RoomEntity with _$RoomModel{
  factory RoomModel({
    int? id,
    String? name,
    int? price,
    String? pricePer,
    List<String>? peculiarities,
    List<String>? imageUrls,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
}