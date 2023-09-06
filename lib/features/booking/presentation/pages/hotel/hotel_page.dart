import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/booking/domain/entities/hotel.dart';
import 'package:flutter_application_1/features/booking/presentation/bloc/hotel/hotel_page_bloc.dart';
import 'package:flutter_application_1/features/booking/presentation/widgets/hotel/about_hotel_widget.dart';
import 'package:flutter_application_1/features/booking/presentation/widgets/hotel/hotel_info_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Отель',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }

  _buildBottomNavigation(HotelEntity hotelEntity){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0,bottom: 18, left: 16, right: 16),
        child: InkWell(
          onTap: () => context.go('/room', extra: hotelEntity.name!),
          child: Container(
              width: 343,
              height: 48,
              decoration: const BoxDecoration(
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color : Color.fromRGBO(13, 114, 255, 1),
              ),
              child: const Center(child: Text('К выбору номера', style: TextStyle(color: Colors.white, fontSize: 16),))
          ),
        ),
      ),
    );
  }

  _buildBody() {
    return BlocBuilder<HotelPageBloc, HotelPageState>(
      builder: (_, state) {
        if (state is HotelPageLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (state is HotelPageErrorState) {
          return const Scaffold(
            body: Center(
              child: Text('Error'),
            ),
          );
        }
        if (state is HotelPageReadyState) {
          return Scaffold(
            appBar: _buildAppBar(),
            bottomNavigationBar: _buildBottomNavigation(state.hotel!),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  HotelInfoWidget(hotel: state.hotel!),
                  const SizedBox(height: 8,),
                  AboutHotelWidget(hotel: state.hotel!),
                  const SizedBox(height: 8,),
                ],
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
