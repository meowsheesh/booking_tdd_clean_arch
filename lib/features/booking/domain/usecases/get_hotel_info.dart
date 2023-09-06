import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/core/usecase/usecase.dart';
import 'package:flutter_application_1/features/booking/domain/entities/hotel.dart';
import 'package:flutter_application_1/features/booking/domain/repository/hotel_repository.dart';

class GetHotelInfoUsecase
    implements Usecase<DataState<HotelEntity>, void> {
  final HotelRepository _hotelRepository;

  GetHotelInfoUsecase(this._hotelRepository);

  @override
  Future<DataState<HotelEntity>> call({void params}) {
    return _hotelRepository.getHotelInfo();
  }
}
