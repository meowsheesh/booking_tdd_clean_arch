import 'package:dio/dio.dart';
import 'package:flutter_application_1/features/booking/domain/entities/hotel.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/constants/constants.dart';
import '../../models/room.dart';

part 'room_api_service.g.dart';

@RestApi(baseUrl: hotelApiUrl)
abstract class RoomApiService {
  factory RoomApiService(Dio dio) = _RoomApiService;

  @GET('/f9a38183-6f95-43aa-853a-9c83cbb05ecd')
  Future<HttpResponse<List<RoomModel>>> getRoomsInfo();
}
