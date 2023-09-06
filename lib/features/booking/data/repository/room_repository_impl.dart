
import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/repository/room_repository.dart';
import '../data_sources/remote/room_api_service.dart';
import '../models/room.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomApiService _hotelApiService;
  RoomRepositoryImpl(this._hotelApiService);

  @override
  Future<DataState<List<RoomModel>>> getRoomsInfo() async {
    try {
      final httpResponse = await _hotelApiService.getRoomsInfo();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      print(e);
      return DataFailed(e);
    }
  }
}
