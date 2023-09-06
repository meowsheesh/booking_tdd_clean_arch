import 'package:flutter_application_1/features/booking/domain/repository/hotel_repository.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [HotelRepository],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)

void main(){

}

