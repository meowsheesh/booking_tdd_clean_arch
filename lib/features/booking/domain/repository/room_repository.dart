import '../entities/room.dart';
import '../../../../core/resources/data_state.dart';

abstract class RoomRepository {
  Future<DataState<List<RoomEntity>>> getRoomsInfo();
}