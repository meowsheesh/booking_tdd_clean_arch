part of 'hotel_page_bloc.dart';

abstract class HotelPageState extends Equatable {
  const HotelPageState({this.hotel, this.dioException});

  final HotelEntity? hotel;
  final DioException? dioException;

  @override
  List<Object> get props => [hotel!, dioException!];
}

class HotelPageLoading extends HotelPageState {
  const HotelPageLoading();
}

class HotelPageReadyState extends HotelPageState {
  const HotelPageReadyState(HotelEntity hotel) : super(hotel: hotel);
}

class HotelPageErrorState extends HotelPageState {
  const HotelPageErrorState(DioException error) : super(dioException: error);
}
