part of 'hotel_page_bloc.dart';

abstract class HotelPageEvent extends Equatable {
  const HotelPageEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class InitializeHotelEvent extends HotelPageEvent {}
