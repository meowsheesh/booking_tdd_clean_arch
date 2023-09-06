import 'package:flutter/material.dart';

import '../../../domain/entities/hotel.dart';
import '../peculiarities_widget.dart';

class AboutHotelWidget extends StatelessWidget {
  final HotelEntity hotel;

  AboutHotelWidget({required this.hotel});

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
          Text(
            'Об отеле',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16,),
          Peculiarities(hotel.aboutTheHotel!.peculiarities!),
          SizedBox(height: 12,),
          Text(
            hotel.aboutTheHotel!.description!,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          SizedBox(height: 16,),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFBFBFC),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text('Удобства'),
                  subtitle: Text('Самое необходимое'),
                  leading: Container(
                    height: double.infinity,
                    child: Icon(Icons.face,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  title: Text('Что включено'),
                  subtitle: Text('Самое необходимое'),
                  leading: Container(
                      height: double.infinity,
                      child: Icon(Icons.check_box_outlined,
                      ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  title: Text('Что не включено'),
                  subtitle: Text('Самое необходимое'),
                  leading: Container(
                    height: double.infinity,
                    child: Icon(Icons.close,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
