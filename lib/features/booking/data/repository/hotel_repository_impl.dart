import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/features/booking/data/data_sources/remote/hotel_api_service.dart';
import 'package:flutter_application_1/features/booking/data/models/hotel.dart';
import 'package:flutter_application_1/features/booking/domain/repository/hotel_repository.dart';

class HotelRepositoryImpl implements HotelRepository {
  final HotelApiService _hotelApiService;
  HotelRepositoryImpl(this._hotelApiService);

  @override
  Future<DataState<HotelModel>> getHotelInfo() async {
    try {
      final httpResponse = await _hotelApiService.getHotelInfo();
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
