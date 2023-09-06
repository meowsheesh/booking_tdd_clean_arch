import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/format_string.dart';
import 'package:flutter_application_1/features/booking/presentation/bloc/rooms/rooms_page_bloc.dart';
import 'package:flutter_application_1/features/booking/presentation/widgets/photo_carousel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/peculiarities_widget.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({Key? key, required this.hotelName}) : super(key: key);
  final String hotelName;

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text(widget.hotelName),
    );
  }

  _buildBody() {
    return BlocBuilder<RoomsPageBloc, RoomsPageState>(
      builder: (_, state) {
        if (state is RoomsPageReadyState) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PhotoCarousel(
                              imageUrls: state.rooms![index].imageUrls!),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(state.rooms![index].name!, style: const TextStyle(fontSize: 22,),)),
                          Peculiarities(state.rooms![index].peculiarities!),
                          SizedBox(height: 8,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(
                                  13, 114, 255, 0.1),
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Подробнее о номере',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(13, 114, 255, 1),
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Icon(Icons.chevron_right, size: 22, color: Color(0xff0D72FF),),
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '${formatNumberWithSpaces(state.rooms![index].price!)} ₽',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(width: 8,),
                              Text(
                                state.rooms![index].pricePer!,
                                style: const TextStyle(
                                  color: Color(0xff828796),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          InkWell(
                            onTap: () => context.go('/booking'),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff0D72FF),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Center(child: Text('Выбрать номер', style: TextStyle(color: Colors.white, fontSize: 18),)),
                              ),
                            ),
                          )
                        ])),
              );
            },
            itemCount: state.rooms!.length,
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
