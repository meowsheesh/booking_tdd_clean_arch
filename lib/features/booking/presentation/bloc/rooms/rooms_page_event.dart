part of 'rooms_page_bloc.dart';

abstract class RoomsPageEvent extends Equatable {
  const RoomsPageEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class InitializeEvent extends RoomsPageEvent {
}