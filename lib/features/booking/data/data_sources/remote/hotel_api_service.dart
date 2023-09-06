import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/hotel.dart';

part 'hotel_api_service.g.dart';

@RestApi(baseUrl: hotelApiUrl)
abstract class HotelApiService {
  factory HotelApiService(Dio dio) = _HotelApiService;

  @GET('/35e0d18e-2521-4f1b-a575-f0fe366f66e3')
  Future<HttpResponse<HotelModel>> getHotelInfo();
}
