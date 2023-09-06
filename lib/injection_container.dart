import 'package:dio/dio.dart';
import 'package:flutter_application_1/features/booking/data/data_sources/remote/room_api_service.dart';
import 'package:flutter_application_1/features/booking/data/repository/hotel_repository_impl.dart';
import 'package:flutter_application_1/features/booking/data/repository/room_repository_impl.dart';
import 'package:flutter_application_1/features/booking/domain/repository/hotel_repository.dart';
import 'package:flutter_application_1/features/booking/domain/repository/room_repository.dart';
import 'package:flutter_application_1/features/booking/domain/usecases/get_hotel_info.dart';
import 'package:flutter_application_1/features/booking/domain/usecases/get_room_info.dart';
import 'package:flutter_application_1/features/booking/presentation/bloc/hotel/hotel_page_bloc.dart';
import 'package:flutter_application_1/features/booking/presentation/bloc/rooms/rooms_page_bloc.dart';
import 'package:get_it/get_it.dart';
import 'features/booking/data/data_sources/remote/hotel_api_service.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());

  // hotel
  sl.registerSingleton<HotelApiService>(HotelApiService(sl()));
  sl.registerSingleton<HotelRepository>(HotelRepositoryImpl(sl()));
  sl.registerSingleton<GetHotelInfoUsecase>(GetHotelInfoUsecase(sl()));
  sl.registerFactory<HotelPageBloc>(() => HotelPageBloc(sl()));

  // rooms
  sl.registerSingleton<RoomApiService>(RoomApiService(sl()));
  sl.registerSingleton<RoomRepository>(RoomRepositoryImpl(sl()));
  sl.registerSingleton<GetRoomInfoUseCase>(GetRoomInfoUseCase(sl()));
  sl.registerFactory<RoomsPageBloc>(() => RoomsPageBloc(sl()));
}
