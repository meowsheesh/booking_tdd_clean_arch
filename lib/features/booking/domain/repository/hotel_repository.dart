import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/features/booking/domain/entities/hotel.dart';

abstract class HotelRepository {
  Future<DataState<HotelEntity>> getHotelInfo();
}
