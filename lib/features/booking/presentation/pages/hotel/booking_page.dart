import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/booking/presentation/widgets/expandable_tile.dart';
import 'package:flutter_application_1/features/booking/presentation/widgets/my_text_form_field.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Бронирование'),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                    child: Column(
                      children: [
                        BookingInfoWidget('Вылет из', 'Data', context),
                        BookingInfoWidget('Страна, город', 'Data', context),
                        BookingInfoWidget('Даты', 'Data', context),
                        BookingInfoWidget('Кол-во ночей', 'Data', context),
                        BookingInfoWidget('Отель', 'Data', context),
                        BookingInfoWidget('Номер', 'Data', context),
                        BookingInfoWidget('Питание', 'Data', context),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Информация о покупателе', style: TextStyle(fontSize: 22),),
                        SizedBox(height: 16,),
                        MyTextFormField('Номер телефона'),
                        MyTextFormField('Почта'),
                        SizedBox(height: 4,),
                        Text('Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту', style: TextStyle(color: Color(0xff828796)),)
                      ],
                    ),
                  ),
                ),
              ),
              RoomExpandableTile(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Добавить туриста', style: TextStyle(fontSize: 22),),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xff0D72FF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.add, color: Colors.white,size: 22,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

Widget BookingInfoWidget(String text, String data, BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Container(
            width: MediaQuery.of(context).size.width/2,
            child: Text(text, style: TextStyle(fontSize: 16, color: Color(0xff828796),),)),
        Text(data, style: TextStyle(fontSize: 16),),
      ],
    ),
  );
}
