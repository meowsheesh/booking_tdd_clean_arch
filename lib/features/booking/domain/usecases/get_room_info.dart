import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/room.dart';
import '../repository/room_repository.dart';

class GetRoomInfoUseCase
    implements Usecase<DataState<List<RoomEntity>>, void> {
  final RoomRepository _roomRepository;

  GetRoomInfoUseCase(this._roomRepository);

  @override
  Future<DataState<List<RoomEntity>>> call({void params}) {
    return _roomRepository.getRoomsInfo();
  }
}
