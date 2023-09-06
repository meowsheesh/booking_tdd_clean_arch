import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/core/resources/data_state.dart';
import 'package:flutter_application_1/features/booking/domain/entities/hotel.dart';
import 'package:flutter_application_1/features/booking/domain/usecases/get_hotel_info.dart';

part 'hotel_page_event.dart';
part 'hotel_page_state.dart';

class HotelPageBloc extends Bloc<HotelPageEvent, HotelPageState> {
  final GetHotelInfoUsecase _getHotelInfoUsecase;

  HotelPageBloc(this._getHotelInfoUsecase) : super(const HotelPageLoading()) {
    on<InitializeHotelEvent>(_init);
  }

  void _init(InitializeHotelEvent event, Emitter<HotelPageState> emmiter) async {
    final dataState = await _getHotelInfoUsecase();
    if(dataState is DataSuccess && dataState.data != null){
      emit(HotelPageReadyState(dataState.data!));
    }
    if(dataState is DataFailed){
      emit(HotelPageErrorState(dataState.exception!));
    }
  }
  
}
