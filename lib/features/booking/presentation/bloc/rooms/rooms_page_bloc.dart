import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/booking/domain/usecases/get_room_info.dart';

import '../../../../../core/resources/data_state.dart';
import '../../../domain/entities/room.dart';

part 'rooms_page_event.dart';
part 'rooms_page_state.dart';

class RoomsPageBloc extends Bloc<RoomsPageEvent, RoomsPageState> {
  final GetRoomInfoUseCase _getRoomInfoUseCase;
  RoomsPageBloc(this._getRoomInfoUseCase) : super(const RoomsPageLoading()) {
    on<InitializeEvent>(_init);
  }

  void _init(InitializeEvent event, Emitter<RoomsPageState> emmiter) async {
    final dataState = await _getRoomInfoUseCase();
    if(dataState is DataSuccess && dataState.data != null){
      emit(RoomsPageReadyState(dataState.data!));
    }
    if(dataState is DataFailed){
      emit(RoomsPageErrorState(dataState.exception!));
    }
  }
}
