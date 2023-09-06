import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/format_string.dart';
import 'package:flutter_application_1/features/booking/domain/entities/hotel.dart';
import '../photo_carousel.dart';

class HotelInfoWidget extends StatelessWidget {
  final HotelEntity hotel;

  HotelInfoWidget({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          PhotoCarousel(imageUrls: hotel.image_Urls!),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 8),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: Color.fromRGBO(255, 198, 0, 0.20000000298023224),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xffFFA800),
                    size: 18,
                  ),
                  Text(
                    '${hotel.rating!} ${hotel.rating_Name!}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 168, 0, 1),
                      fontFamily: 'SFProDisplay',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            hotel.name!,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16),
            child: Text(
              hotel.adress!,
              style: const TextStyle(color: Color(0xff0D72FF)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'от ${formatNumberWithSpaces(hotel.minimalPrice!)} ₽',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(width: 8,),
              Text(
                hotel.priceForIt!,
                style: const TextStyle(
                  color: Color(0xff828796),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
