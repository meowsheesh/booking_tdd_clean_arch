part of 'rooms_page_bloc.dart';

abstract class RoomsPageState extends Equatable {
  const RoomsPageState({this.rooms, this.dioException});


  final List<RoomEntity>? rooms;
  final DioException? dioException;

  @override
  List<Object> get props => [rooms!, dioException!];
}

class RoomsPageLoading extends RoomsPageState {
  const RoomsPageLoading();
}

class RoomsPageReadyState extends RoomsPageState {
  const RoomsPageReadyState(List<RoomEntity> rooms) : super(rooms: rooms);
}

class RoomsPageErrorState extends RoomsPageState {
  const RoomsPageErrorState(DioException error) : super(dioException: error);
}
