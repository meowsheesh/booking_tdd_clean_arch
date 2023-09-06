import 'dart:convert';

import 'package:flutter_application_1/features/booking/data/models/hotel.dart';
import 'package:flutter_application_1/features/booking/domain/entities/hotel.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/json_reader.dart';

void main() {
  var testHotelModel = HotelModel(
    id: 1,
    name: 'Лучший пятизвездочный отель в Хургаде, Египет',
    adress: 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
    minimalPrice: 134268,
    priceForIt: 'За тур с перелётом',
    rating: 5,
    rating_Name: 'Превосходно',
    image_Urls: [
      "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
      "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
      "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
    ],
    aboutTheHotel: AboutHotel(
      description:
          'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
      peculiarities: [
        "Бесплатный Wifi на всей территории отеля",
        "1 км до пляжа",
        "Бесплатный фитнес-клуб",
        "20 км до аэропорта"
      ],
    ),
  );

  test('be a subclass of hotel entity', () async {
    // assert
    expect(testHotelModel, isA<HotelEntity>());
  });
  
  test('return a valid model from json', () async {
    // arrange
    final Map<String, dynamic> jsonMap = json.decode(
      readJson('helpers/dummy_data/dummy_hotel_response.json'),
    );
    // act
    final result = HotelModel.fromJson(jsonMap);
    // expect
    expect(result.aboutTheHotel, equals(testHotelModel.aboutTheHotel));
  });
}
